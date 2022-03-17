require 'takeaway'

RSpec.describe Takeaway do
  it 'prints the welcome screen and prompts the user to make a selection' do
    io = double :io

    dish1 = double :dish1, name: "Chicken Tikka", price: 7.49, display: "Chicken Tikka: £7.49"
    dish2 = double :dish2, name: "Fish and Chips", price: 8.99, display: "Fish and Chips: £8.99"
    dish3 = double :dish3, name: "Sushi", price: 4.99, display: "Sushi: £4.99"

    menu = double :menu, list: "Here are the available dishes\n
    Chicken Tikka: £7.49\n
    Fish and Chips: £8.99\n
    Sushi: £4.99\n"

    allow(menu).to receive(:add).with(dish1)
    allow(menu).to receive(:add).with(dish2)
    allow(menu).to receive(:add).with(dish3)

    expect(io).to receive(:puts).with("Welcome to The Restaurant.")
    expect(io).to receive(:puts).with("Please select your order from the list below.")
    expect(io).to receive(:puts).with("#{menu.list}")
    expect(io).to receive(:print).with("Make your selection: ")
    expect(io).to receive(:gets)

    takeaway = Takeaway.new(io, menu)
    takeaway.run

  end
end