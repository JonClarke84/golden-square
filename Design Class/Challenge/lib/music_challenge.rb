class MusicList
  def initialize(track)
    @list = []
    fail "Not a string" if !track.is_a?(String)
    @list << track    
  end
  
  def add(track)
    fail "Not a string" if !track.is_a?(String)
    @list << track
  end

  def list
    @list
  end

end

