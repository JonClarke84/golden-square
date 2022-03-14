require 'multiclass_DiaryEntry'
require 'multiclass_Diary'

RSpec.describe Diary do
  context 'given some diary entries' do
    it 'returns a list of all diary entries' do
      diary = Diary.new
      tuesday = DiaryEntry.new("Tuesday", "I went to McDonalds but it was shut.")
      wednesday = DiaryEntry.new("Wednesday", "I went back to McDonalds and it was open this time.")
      diary.add(tuesday)
      diary.add(wednesday)
      expect(diary.read_all_entries).to eq "" +
      "My Diary\n" +
      "Title: Tuesday. Entry: I went to McDonalds but it was shut.\n" +
      "Title: Wednesday. Entry: I went back to McDonalds and it was open this time.\n"
    end
  end

  it 'gives a suitable diary entry based on reading speed and time available' do
    diary = Diary.new
    tuesday = DiaryEntry.new("Tuesday", "I went to McDonalds but it was shut")
    wednesday = DiaryEntry.new("Wednesday", "I went back to McDonalds and it was open this time")
    thursday = DiaryEntry.new("Thursday", "I went to Five Guys")
    diary.add(tuesday)
    diary.add(wednesday)
    diary.add(thursday)
    expect(diary.time_to_read(1, 10)).to eq tuesday.read_entry
  end

end
