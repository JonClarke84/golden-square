require 'report_length'

RSpec.describe "Checks length of strings are correct" do
  it "This string was 8 characters long" do
    str = report_length("jonathan")
    expect(str).to eq "This string was 8 characters long"
  end

  it "This string was 3 characters long" do
    str = report_length("car")
    expect(str).to eq "This string was 3 characters long"
  end

  it "This string was 6 characters long" do
    str = report_length("school")
    expect(str).to eq "This string was 6 characters long"
  end
end

