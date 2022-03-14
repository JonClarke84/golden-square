require 'track'

RSpec.describe Track do
  context 'given a track' do
    it 'returns true if the keyword matches the title or artist' do
      track1 = Track.new("Bullet With Butterfly Wings", "Smashing Pumpkins")
      expect(track1.matches?("Bullet")).to eq true
    end

    it 'returns true if the keyword matches the title or artist' do
      track1 = Track.new("Bullet With Butterfly Wings", "Smashing Pumpkins")
      expect(track1.matches?("smash")).to eq true
    end

    it 'returns false if the keyword does not match the title or artist' do
      track1 = Track.new("Bullet With Butterfly Wings", "Smashing Pumpkins")
      expect(track1.matches?("train")).to eq false
    end
  end
end