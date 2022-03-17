require 'takeaway'

RSpec.describe Takeaway do
  it 'prints the welcome screen and prompts the user to make a selection,
  looping until the user chooses to stop' do
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
    expect(io).to receive(:gets).and_return("1")
    allow(menu).to receive(:select).with(1).and_return(dish1)
    
    basket = double :basket
    
    allow(basket).to receive(:add).with(dish1).and_return(dish1)
    allow(basket).to receive(:contents).and_return([dish1])
    
    expect(io).to receive(:puts).with("You have added Chicken Tikka.")
    expect(io).to receive(:print).with("Make another choice? y/n: ")
    
    takeaway = Takeaway.new(io, menu, basket)
    takeaway.run

  end
end