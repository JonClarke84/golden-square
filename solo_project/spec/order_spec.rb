require 'order'

RSpec.describe Order do
  context 'given an order' do
    it 'prints a receipt' do
      io = double :io

      basket = double :basket, contents: [
        {name: "Chicken Tikka",
         price: 7.49,
         quantity: 2},

        {name: "Fish and Chips",
         price: 8.99,
         quantity: 1}
      ]

      expect(io).to receive(:puts).with("You have ordered:")
      expect(io).to receive(:puts).with("Chicken Tikka: £7.49: x2")
      expect(io).to receive(:puts).with("Fish and Chips: £8.99: x1")
      expect(io).to receive(:puts).with("Total price: £23.97")

      order = Order.new(io, basket)
      order.print_receipt

    end
  end
end