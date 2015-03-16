class Design

  def initialize( design_id )
    @design_id = design_id
  end

  def get_design_link
    "#{Rails.root}/app/assets/blocks/test#{@block_id}.png"
  end

end
