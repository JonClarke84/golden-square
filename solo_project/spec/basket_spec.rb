require 'basket'

RSpec.describe Basket do

  it 'adds items to the basket' do
    dish1 = double :dish1, name: "Chicken Tikka", price: 7.49
    dish2 = double :dish2, name: "Fish and Chips", price: 8.99 

    basket = Basket.new
    basket.add(dish1)
    basket.add(dish1)
    basket.add(dish2)

    expect(basket.contents).to eq [
      { :name => "Chicken Tikka", :price => 7.49, :quantity => 2 },
      { :name => "Fish and Chips", :price => 8.99, :quantity => 1 }
    ]
  end

  it 'formats the basket contents' do

    dish1 = double :dish1, name: "Chicken Tikka", price: 7.49
    dish2 = double :dish2, name: "Fish and Chips", price: 8.99 

    basket = Basket.new
    basket.add(dish1)
    basket.add(dish1)
    basket.add(dish2)

    expect(basket.format_contents).to eq "Dishes currently in your basket:\n" + 
      "Chicken Tikka: £7.49: x2\n" + 
      "Fish and Chips: £8.99: x1\n" +
      "Total price: £23.97"
  end
end
