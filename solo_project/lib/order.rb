# lib/order.rb
class Order
  def initialize(basket) # takes a list of contents from Basket
    @basket = basket
  end

  def print_receipt
    # prints a receipt
    total_price = 0
    receipt = "You have ordered:\n"
    @basket.contents.each do |dish|
      receipt += "#{dish[:name]}: £#{dish[:price]}: x#{dish[:quantity]}\n"
      total_price += (dish[:price] * dish[:quantity])
    end
    return receipt += "Total price: £#{total_price}"
  end
end
