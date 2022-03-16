require 'menu'

RSpec.describe Menu do
  it 'adds dishes and displays them' do
    
    io = double :io

    dish1 = double :dish1, display: "Chicken Tikka: £7.49"
    dish2 = double :dish2, display: "Fish and Chips: £8.99"
    dish3 = double :dish3, display: "Sushi: £4.99"

    expect(io).to receive(:puts).with("Here are the available dishes")
    expect(io).to receive(:puts).with("1. #{dish1.display}")
    expect(io).to receive(:puts).with("2. #{dish2.display}")
    expect(io).to receive(:puts).with("3. #{dish3.display}")

    menu = Menu.new(io)

    menu.add(dish1)
    menu.add(dish2)
    menu.add(dish3)

    menu.list
  end
end