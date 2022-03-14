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

  it 'returns a list of mobile contacts in all diary entries' do
    diary = Diary.new
    friday = DiaryEntry.new("Friday", "I met Dave, his phone number is 07845123123")
    saturday = DiaryEntry.new("Saturday", "I went to the cinema and had a lovely time.")
    sunday = DiaryEntry.new("Sunday", "Mary's phone number is 07854777666")
    monday = DiaryEntry.new("Monday", "Quentin's phone number is 07854777555, but I don't know him.") #this is not in the contact list
    diary.add(friday)
    diary.add(saturday)
    diary.add(sunday)
    diary.add(monday)

    expect(diary.all_diary_numbers).to eq ["07845123123", "07854777666", "07854777555"]
  end

end
