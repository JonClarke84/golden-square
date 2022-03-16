#lib/order.rb
class Order
  def initialize(io, basket) #takes a list of contents from Basket
    @io = io
    @basket = basket
  end

  def print_receipt
    #prints a receipt
    total_price = 0
    @io.puts "You have ordered:"
    @basket.contents.each do |dish|
     @io.puts "#{dish[:name]}: £#{dish[:price]}: x#{dish[:quantity]}"
     total_price += (dish[:price] * dish[:quantity])
    end
    @io.puts "Total price: £#{total_price}"
  end

  def notify
    #notifies the user by text that their order is on the way
  end
end