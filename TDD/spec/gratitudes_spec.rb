require 'gratitudes'

RSpec.describe Gratitudes do
  it "Be grateful for: apples" do
    apples = Gratitudes.new
    apples.add("apples")
    result = apples.format
    expect(result).to eq "Be grateful for: apples"
  end
  it "apples, bananas, melons" do
    fruit = Gratitudes.new
    fruit.add("apples")
    fruit.add("bananas")
    fruit.add("melons")
    result = fruit.format
    expect(result).to eq "Be grateful for: apples, bananas, melons"
  end
end

