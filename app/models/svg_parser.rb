class SvgParser
  attr_reader :svg, :paths
  #WAY TOO MANY comments here, I know.  We can put them elsewhere later.

  # The svg is in fact, the svg.  Right now, in the controller, we are feeding it the test4 svg right from the file.  It also works to pass in Quilt.first.svg.  Eventually, we'll be calling it from somewhere and passing the svg that we want.
  def initialize(svg)
    @svg = Nokogiri::XML(svg)
    @paths = @svg.xpath('//*[contains(@style,"fill")]')
  end

  # In case we needed to know all the unique path ids in the block, this dumps them out
  def all_path_ids
    @paths.map {|p| p[:id]}
  end

  def path_coords(path_id)
    # @paths.first[:id]
    @paths.xpath('//*[@id="' + path_id +'"]')
    # @paths.xpath('//*[@id="rect4144"]')
    # current_path = @paths.xpath('//*[contains(@id, ' + path_id +')]')
    # lop off the m at the start and the z at the end
    # array = current_path["d"].split[1..-2]
    # coords_array = []
    # array.each do |a|
    #   coord_pair = a.split(',').map {|x| x.to_f }
    #   coords_array << coord_pair
    # end
    # coords_array
  end
  # This looks at all the image-ids (an id we will assign to each fabric design) and returns an array of the unique ones.  Eventually, we'll want a method that loops through each of these unique ids and runs the replace_fabric_url method.
  def all_unique_image_ids
    all_ids = @paths.map {|p| p['image-id']}
    all_ids.uniq
  end

  # There are a bunch more little methods I wrote for getting things out of the svg, but I moved those to the mynotes file...we can bring them back here as needed.  This is the big guy that takes the image-id and a new url and replaces the fill in the svg

  def replace_fabric_urls(image_id, new_url)
    # can't do @paths.each...had to do .xpath to get them without all manner of Nokogiri::Element nastiness.  this finds all paths with the image id we are passing in with the variable (had to break the string for that to work)
    selected_paths = @paths.xpath('//*[contains(@image-id, ' + image_id +')]')
    selected_paths.each do |path|
      # for every path, the "style" is a big old string.  split that puppy up, you'll get an array like ["fill:none", "stroke:#000000", ...]
      style_array = path["style"].split(';')
      fill_index = 0
      # typically, the fill is listed first, but in case it isn't, this finds where it is and notes the position. tried moving it in the file, works great.
      style_array.each_with_index do |style_attribute, index|
        if style_attribute.start_with?("fill:")
          fill_index = index
        end
      end
      # here is where we put the url we want in
      fill_value = ["fill:#{new_url}"]
      # and replace the correct element in the array of style elements
      style_array[fill_index] = fill_value
      # and squish it all back together into a big long string and replace the path's style with the new magic
      new_style = style_array.join(';')
      path["style"] = new_style
    end
    # had this returning selected paths so I could see them...changed it to return the whole changed svg...might not need to return anything, depending on where we call it
    # selected_paths
    @svg
  end

  # Seam allowance, seam allowance.  This is easy to calculate with rectangular patches.
  # Triangles are trickier.  For our purposes, we are limiting them to 45, 45, 90.
  # We assume they will be cut by splitting a larger square in half on the diagonal.
  # We had done some math to calculate exactly how large that square should be, given the seam allowance and length of one side of the triangle.
  # n = new length of one side of big square that will give 2 triangles
  # s = seam allowance
  # x = length of straight side of triangle
  # n = x + 2s + s*sqrt(2)
  # this is derived from the basic formula: with a 45 45 90 triangle, the diagonal is found
  # with diagonal = straight side * sqrt(2)
  # This accounts for the space between the two triangles,
  # which is really hard to explain in words but instantly obvious visually
  # so I won't go into it here.
  # Then you have the original side length(x), plus the seam allowance on both sides of that (2s)
  # The issue is, with this pure math method, for a seam allowance of 0.25
  # you need to add 0.853553391" to each x.
  # But, if you actually measure it out, with graph paper, a very sharp pencil, and a quilting ruler
  # you get 0.875", or 7/8 of an inch.
  # 0.25" seam allowances are the gold standard for quilters, and that is what we are including in our MVP.
  # Every source I found online, whether a calculator or a descriptive tutorial, has said to add 7/8 of an inch.
  # While the difference between the calculation and physical measurement seems small (0.02145"), with 9 two-triangle squares in a block,
  # and 16 blocks in a 4x4 quilt, already the fabric we'd provide with math is about 1/4" too short on each side.
  # That means it is missing 23.868 square inches, or a patch nearly 5" square.
  # We hope to allow for quilters to select from a range of seam allowances later (eep, metric...).
  # I was hoping to calculate an average number to add to the calculation to account for this real-life difference.
  # But, across 4 of the most logical seam allowance choices (a: 1/4", b: 3/8", c: 1/2", d: 5/8")
  # the difference between math and reality was not consistent.
  # For a and b, the calculation came in too small.  For c and d, it was too large.
  # The average of all 4 differences between the calculation and reality ended up being that
  # the calculation is very slightly (0.00153) too large.
  # So, this does not help us at all with the issue that:
  # Most quilters will be using a 0.25" seam allowance, and following this calculation, they will not get enough fabric.
  # So I am just using 0.875".  I am separating it into another method.  We can change it later.
  # We can do fancy math.  We can do real-life tests of exactly what we need and have a different sort of calculation with every single seam allowance.
  # But the more I read up on quilting, I doubt most people would even want a seam allowance other than 0.25".
  # 90 pixels per inch



  # Cut and sew blocks have a seam allowance, cheaters have a seam allowance of 0.
  # Later, we will have to deal with bleeding out seam allowance on the edges of each block
  # so there can be another method that goes along with this.
  def surface_area_by_design_id_with_seam_allowance(seam_allowance)
    area_hash = {}
    all_unique_image_ids.each do |id|
      total_area = 0
      selected_paths = @paths.xpath('//*[contains(@image-id, ' + id +')]')
      selected_paths.each do |path|
        area = 5
        total_area += area
      end
      area_hash["#{id}"] = total_area
    end
    area_hash
  end

# this would be nicer with a lot of tiny methods instead of one big one.  but.  i started out that way, with something like

# def triangle?
# end
#
# def find_rectangle_sides_from_path_coords(coords)
# end
#
# def find_triangle_straight_side_from_path_coords(coords)
# end
#
# def side_of_square_for_two_triangles(triangle_side, seam_allowance)
# end
#
# def patch_area_with_seam_allowance(side, side,  seam_allowance)
# end

# and realized that by breaking this up into tinier methods, those methods are no longer
# called on the whole svg, so it doesn't make sense for them to be in this class...
# that's some ruby theory that i will learn later as I refactor.

# these may all be methods on the block itself...but...since I have all my parsing methods here, it is easiest to put them here for now

end
