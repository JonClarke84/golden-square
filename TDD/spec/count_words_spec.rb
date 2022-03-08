require 'count_words'

RSpec.describe "count words method" do
  it "counts the number of words in a string" do
    result = count_words("This is a string")
    expect(result).to eq 4
  end
end