require 'greet.rb'

RSpec.describe "greet method" do
  it "Greets the user by saying Hello {user}" do
    result = greet("Jon")
    expect(result).to eq "Hello Jon"
  end
end