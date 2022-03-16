require 'basket'

RSpec.describe Basket do
  it 'adds items to basket and displays them' do
    io = double :io

    dish1 = double :dish1, name: "Chicken Tikka", price: 7.49
    dish2 = double :dish2, name: "Fish and Chips", price: 8.99 

    expect(io).to receive(:puts).with("Dishes currently in your basket:")
    expect(io).to receive(:puts).with("Chicken Tikka: £7.49: x2")
    expect(io).to receive(:puts).with("Fish and Chips: £8.99: x1")
    expect(io).to receive(:puts).with("Total price: £23.97")
   
    basket = Basket.new(io)
    basket.add(dish1)
    basket.add(dish1)
    basket.add(dish2)
    basket.print_contents
  end
end