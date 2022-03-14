# File: lib/music_library.rb

class MusicLibrary
  def initialize
    @music_library = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
   @music_library << track
  end

  def all
    # Returns a list of track objects
    @music_library
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
    keyword_matches = []
    @music_library.each do |track|
      if track.matches?(keyword)
        keyword_matches << track
      end
    end
    keyword_matches
  end
end