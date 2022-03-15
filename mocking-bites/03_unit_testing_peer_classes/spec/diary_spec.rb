require 'diary'

RSpec.describe Diary do
  context 'given some contents as a string' do
    it 'returns the contents of the diary' do
      diary = Diary.new("This is my diary entry")
      expect(diary.read).to eq "This is my diary entry"
    end
  end
end