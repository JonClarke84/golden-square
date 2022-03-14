require 'music_library'

RSpec.describe MusicLibrary do
  context 'given three tracks' do
    it 'returns a list of track objects' do
      music_library = MusicLibrary.new
      music_library.add(:track1)
      music_library.add(:track2)
      music_library.add(:track3)
      expect(music_library.all).to eq [:track1, :track2, :track3]
    end
    
    it 'returns a list of tracks that match the keyword' do
      music_library = MusicLibrary.new
      track1 = double(:track1, matches?: true)
      track2 = double(:track2, matches?: true)
      track3 = double(:track3, matches?: false)
      music_library.add(track1)
      music_library.add(track2)
      music_library.add(track3)
      expect(music_library.search("bullet")).to eq [track1, track2]
    end
  end
end