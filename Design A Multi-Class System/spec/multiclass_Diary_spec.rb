require 'multiclass_DiaryEntry'
require 'multiclass_Diary'

RSpec.describe Diary do
  context 'given two diary entries' do
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
end
