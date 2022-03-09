require 'diary'

RSpec.describe DiaryEntry do
  
  it "returns the title" do
    result = DiaryEntry.new("My Diary", "Today I had a great day")
    expect(result.title).to eq "My Diary"
  end

  it "returns the contents" do
    result = DiaryEntry.new("My Diary", "Today I had a great day")
    expect(result.contents).to eq "Today I had a great day"
  end

  it "counts the words" do
    result = DiaryEntry.new("My Diary", "Today I had a great day")
    expect(result.count_words).to eq 6
  end

  it "returns the correct reading time" do
    result = DiaryEntry.new("My Diary", ("1".."100").to_a.join(" "))
    expect(result.reading_time(50)).to eq 2
  end

  it "returns a string with a chunk the reader could read in the time given" do
    result = DiaryEntry.new("My Diary", ("1".."100").to_a.join(" "))
    expect(result.reading_chunk(50, 1)).to eq ("1".."50").to_a.join(" ")
  end

  it "reading_chunk called a second time returns the second half" do
    result = DiaryEntry.new("My Diary", ("1".."100").to_a.join(" "))
    result.reading_chunk(50, 1)
    expect(result.reading_chunk(50, 1)).to eq ("51".."100").to_a.join(" ")
  end

  it "reading_chunk called a third time returns the first half" do
    result = DiaryEntry.new("My Diary", ("1".."100").to_a.join(" "))
    result.reading_chunk(50, 1)
    result.reading_chunk(50, 1)
    expect(result.reading_chunk(50, 1)).to eq ("1".."50").to_a.join(" ")
  end

  end