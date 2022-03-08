require 'todo'

RSpec.describe "check if text contains @TODO" do
  
  it "returns false if string is blank" do
    result = check_todo("")
    expect(result).to eq false
  end

  it "put the bins out returns false" do
    result = check_todo("put the bins out")
    expect(result).to eq false
  end
  
  it "put the bins out @TODO returns true" do
    result = check_todo("put the bins out @TODO")
    expect(result).to eq true
  end

  it "put the bins out TODO returns true" do
    result = check_todo("put the bins out TODO")
    expect(result).to eq false
  end

  it "put the bins out @todo returns true" do
    result = check_todo("put the bins out @todo")
    expect(result).to eq false
  end

  it "@TODO returns true" do
    result = check_todo("@TODO")
    expect(result).to eq true
  end

end