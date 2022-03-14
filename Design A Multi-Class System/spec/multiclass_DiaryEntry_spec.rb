require 'multiclass_DiaryEntry'

RSpec.describe DiaryEntry do

  context "given an empty string" do
    it "raises an error" do
      expect { entry = DiaryEntry.new("", "") }.to raise_error "title and contents are blank"
    end

    it "raises an error" do
      expect { entry = DiaryEntry.new("", "this has a blank title") }.to raise_error "title is blank"
    end

    it "raises an error" do
      expect { entry = DiaryEntry.new("this has blank contents", "") }.to raise_error "contents are blank"
    end
  end
  
  it "returns the formatted title and contents" do
  entry = DiaryEntry.new("Friday", "I met Dave, his phone number is 07845123123.")
  expect(entry.read_entry).to eq "Title: Friday. Entry: I met Dave, his phone number is 07845123123.\n"
  end
  
end