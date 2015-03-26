#Terminology Used in this Project

Quilt: Made up of many blocks.

Block: Repeating geometric pattern. Uses an SVG file to represent it. Made up of many patches.

Patch: Individual pieces of fabric in a cut and sew project. Each path in the SVG represents a patch.

Pattern: Raster image applied to each patch.

#API Usage

Using the fake API:

To search via color:
https://fakepi.herokuapp.com/api/v1/design/search?color1=444444
(Replace "444444" with the hex value you are looking for. Returns 10 results.)

To search via "search term"
https://fakepi.herokuapp.com/api/v1/design/search?q=goat
(Replace "goat" with your search term. Returns 10 results.)

To get a set number of "popular" results: (where "limit" is number desired)
https://fakepi.herokuapp.com/api/v1/design/search?limit=10&sort=freshtastic

To get a preview for a specific design, given its id:
https://fakepi.herokuapp.com/api/v1/design/previewImage/1454355?print_width=4.5&print_height=4.5&preview_width_pixels=150&preview_height_pixels=150
for id = 1454355, print_width=4.5 inches, print_height = 4.5 inches. The id needs to be a number of 1 to 7 digits.

Using the real API*:
To search via color:
http://api.v1.spoonflower.com/design/search?color1=444444

To search via search term:
http://api.v1.spoonflower.com/design/search?q=goats

To get a set number of "popular" results: (where "limit" is number desired)
http://api.v1.spoonflower.com/design/search?limit=10&sort=freshtastic

To get a preview for a specific design, given its id:
http://api.v1.spoonflower.com/design/previewImage/1454355?print_width=4.5&print_height=4.5&preview_width_pixels=150&preview_height_pixels=150
for id = 1454355, print_width=4.5 inches, print_height = 4.5 inches

*requires username and password. Get more documentation at http://api.v1.spoonflower.com/


#Scripts

Adding a new block SVG:
add the file to the assets folder

run
rails r bin/add_block.rb
in the terminal to do the necessary housekeeping (add to table, parse the paths, etc)

----

#Making a working block in Inkscape:

1. Go to file->Document Properties
  - in the upper right, set "Default units" to in
  - in the "Custom size" box, set the width and height to 9 inches
2. Making patches:
  - make sure all patches are paths. Not rects.
    - to convert a rect to a path, with the rect selected, go to Path->Object to Path
    - How do you tell if a given patch is a rect or a path?
      - go to Edit->XML Editor. With the patch selected, the XML should read something to the effect of "<svg:path..." rather than "<svg:rect..."
  - when positioning and sizing paths, give them a fill to make them visible, and no stroke
    - this is important for calculating area of the patch. Your coordinates will be off if you have a stroke width > 0
    - it seems to be helpful to use a visual bounding box rather than a geometric bounding box. If you are unsure which you have enabled, go to Edit->Preferences
  - once all of the patches are in place and sized correctly, give them no fill and a stroke of 3.960 px, color rgba c0c0c0ff.
  - grouped items will determine the sets available on the edit screen of the app. Nested groups are not supported at this time
    - group names should follow the naming convention "groupn" where n is the number of the group. Example: id="group2"
    - for now, we are assuming that all patches are rectangles with no rotation, or 45-45-90 triangles. Other shapes are likely to break area calculations and such
    - for every path, give it an image-id attribute with any value (like image-id="replaceme1") so that it can store the fabric id that corresponds with its fill
    - area calculations are very fragile at this time in regards to triangles.  if coordinates have any lineto (L or l), the area won't calculate properly.  Any absolute coordinates (starting with M as opposed to m) will also cause artificially inflated area.  Seems helpful to do Edit > Preferences > Input/Output > SVG Output Path Data: Path String Format = Relative.  Also, it misfires if the coordinates have any letters embedded in the values, like so: m 1.9073486e-8,847.5  You could fiddle with the exponent settings, or, if you find a negative exponent, just make it 0.

**If your blocks have gotten all kattywompus, there is a repository for clean block svg files: **
https://github.com/cHaden/sanitized_svg
----

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>
