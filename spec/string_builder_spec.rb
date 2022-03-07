require 'string_builder'

RSpec.describe StringBuilder do
  it "returns lemons" do
    string = StringBuilder.new
    string.add("lemons")
    result = string.output
    expect(result).to eq "lemons"
  end
  it "returns 6" do
    string = StringBuilder.new
    string.add("lemons")
    result = string.size
    expect(result).to eq 6
  end
  it "returns batman" do
    string = StringBuilder.new
    string.add("bat")
    string.add("man")
    result = string.output
    expect(result).to eq "batman"
  end
end