require 'check_codeword'

RSpec.describe "checks the codeword is correct" do
  it "Returns a positive message when message is correct" do
    positive = check_codeword("horse")
    expect(positive).to eq "Correct! Come in."
  end

  it "says you're close when a word beginning with h and ending in e is used" do
    almost = check_codeword("house")
    expect(almost).to eq "Close, but nope."
  end

  it "tells you you're wrong when the wrong word is used" do
    wrong = check_codeword("hippo")
    expect(wrong).to eq "WRONG!"
  end
end
