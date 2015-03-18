class Pattern

  def initialize( pattern_id )
    @pattern_id = pattern_id
  end

  def get_pattern_link
    "/app/assets/patterns/pattern#{@pattern_id}.png"
  end

end
