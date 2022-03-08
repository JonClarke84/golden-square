require 'music_challenge'

RSpec.describe MusicList do

  context "initializes without a string" do
    it "fails if not string" do
    expect { music_list = MusicList.new(4) }.to raise_error "Not a string"
    
    end
  end

  it "adds track" do
    music_list = MusicList.new("Never Gonna Give You Up")
    expect(music_list.add("Happy Birthday")).to eq ["Never Gonna Give You Up", "Happy Birthday"]
  end
  
  it "returns list of tracks" do
    music_list = MusicList.new("Never Gonna Give You Up")
    music_list.add("Happy Birthday")
    music_list.add("Let It Go")
    expect(music_list.list).to eq ["Never Gonna Give You Up", "Happy Birthday", "Let It Go"]

  end

end