require 'order'

RSpec.describe Order do
  context 'given an order' do
    it 'prints a receipt' do
      basket = double :basket, contents: [
        {name: "Chicken Tikka",
         price: 7.49,
         quantity: 2},

        {name: "Fish and Chips",
         price: 8.99,
         quantity: 1}
      ]
      order = Order.new(basket)
      expect(order.print_receipt).to eq "You have ordered:\n" + 
                                        "Chicken Tikka: £7.49: x2\n" +
                                        "Fish and Chips: £8.99: x1\n" +
                                        "Total price: £23.97"

    end
  end
end