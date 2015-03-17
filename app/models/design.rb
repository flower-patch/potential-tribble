class Design

  def initialize( design_id )
    @design_id = design_id
  end

  def get_design_link
    "/app/assets/designs/design#{@design_id}.png"
    
  end

end
