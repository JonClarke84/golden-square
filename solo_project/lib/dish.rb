#/lib/dishes.rb
class Dish
  def initialize(name, price) #name is a string, price is a float
    @name = name
    @price = price.to_f
  end

  def name
    @name
  end

  def price
    @price
  end

  def display
    "- #{@name}: £#{@price}"
  end
end