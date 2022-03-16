#lib/basket.rb
class Basket
  def initialize(io)
    @basket_contents = []
    @io = io
  end

  def add(dish) #accepts choices from customer
    #adds dish to basket, increasing quantity when selected multiple times
    new_dish = {
      name: dish.name,
      price: dish.price,
      quantity: 1
    }

    if @basket_contents == []
      @basket_contents << new_dish
    else
      @basket_contents.each do |dish_already_in_basket|
        unless dish_already_in_basket[:name] == dish.name
          @basket_contents << new_dish
          break
        else
          dish_already_in_basket[:quantity] += 1
        end
      end
    end
  end

  def contents
    #returns formatted contents of basket
    @io.puts "Dishes currently in your basket:"
    @basket_contents.each do |dish|
     @io.puts "#{dish[:name]}: £#{dish[:price]}: x#{dish[:quantity]}"
    end
  end
end