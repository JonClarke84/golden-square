require 'counter'

RSpec.describe Counter do
  it "counts ten" do
    ten = Counter.new
    ten.add(10)
    result = ten.report
    expect(result).to eq "Counted to 10 so far."
  end

  it "adds 5, 10 and 2 to give 17" do
    counter = Counter.new
    counter.add(5)
    counter.add(10)
    counter.add(2)
    result = counter.report
    expect(result).to eq "Counted to 17 so far."
  end
end
