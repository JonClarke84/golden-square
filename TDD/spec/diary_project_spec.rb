require 'diary_project'

RSpec.describe "make_snippet method" do
  it "returns five words" do
    snippet = make_snippet("I live in a house")
    expect(snippet).to eq "I live in a house"
  end

  it "returns less than 5 words" do
    snippet = make_snippet("I live in England")
    expect(snippet).to eq "I live in England"
  end

  it "adds ... when longer than five" do
    snippet = make_snippet("I live in a house with a big face")
    expect(snippet).to eq "I live in a house..."
  end
end
