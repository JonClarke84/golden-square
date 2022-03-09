require 'exercise'

RSpec.describe DiaryEntry do
  it "returns title" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
  end

  it "returns contents" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.contents).to eq "contents"
  end

  it "counts the words" do
    diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" "))
    expect(diary_entry.count_words).to eq 200
  end

  it "returns the reading time" do
    diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" "))
    expect(diary_entry.reading_time(200)).to eq 1
  end

  it "requests a chunk of text to read" do
    diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" "))
    expect(diary_entry.reading_chunk(50, 2)).to eq ("1".."100").to_a.join(" ")
  end

  it "calling reading_chunk twice returns the second half" do
    diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" "))
    diary_entry.reading_chunk(50, 2)
    expect(diary_entry.reading_chunk(50, 2)).to eq ("101".."200").to_a.join(" ")
  end

  it "calling reading_chunk thrice returns the first half" do
    diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" "))
    diary_entry.reading_chunk(50, 2)
    diary_entry.reading_chunk(50, 2)
    expect(diary_entry.reading_chunk(50, 2)).to eq ("1".."100").to_a.join(" ")
  end

  it "calling reading_chunk twice and overextending the array returns the rest of the text" do
    diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" "))
    diary_entry.reading_chunk(50, 3)
    expect(diary_entry.reading_chunk(50, 3)).to eq ("151".."200").to_a.join(" ")
  end
end