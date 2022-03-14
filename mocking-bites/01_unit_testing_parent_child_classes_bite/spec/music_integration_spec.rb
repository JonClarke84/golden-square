require 'track'
require 'music_library'

RSpec.describe  MusicLibrary do
  context 'given three tracks' do
    it 'returns a list of track objects' do
      music_library = MusicLibrary.new
      track1 = Track.new("Bullet With Butterfly Wings", "Smashing Pumpkins")
      track2 = Track.new("Bullet In The Head", "Rage Against The Machine")
      track3 = Track.new("Polly", "Nirvana")
      music_library.add(track1)
      music_library.add(track2)
      music_library.add(track3)
      expect(music_library.all).to eq [track1, track2, track3]
    end
    
    it 'returns a list of tracks that match the keyword' do
      music_library = MusicLibrary.new
      track1 = Track.new("Bullet With Butterfly Wings", "Smashing Pumpkins")
      track2 = Track.new("Bullet In The Head", "Rage Against The Machine")
      track3 = Track.new("Polly", "Nirvana")
      music_library.add(track1)
      music_library.add(track2)
      music_library.add(track3)
      expect(music_library.search("bullet")).to eq [track1, track2]
    end
  end
end