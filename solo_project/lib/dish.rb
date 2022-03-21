# /lib/dishes.rb
class Dish
  def initialize(name, price) # name is a string, price is a float
    @name = name
    @price = price
  end

  attr_reader :name

  attr_reader :price

  def display
    "#{@name}: £#{@price}"
  end
end
