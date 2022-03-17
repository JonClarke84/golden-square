#lib/basket.rb
class Basket
  def initialize
    @basket_contents = []
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
        if dish_already_in_basket[:name] == dish.name
          dish_already_in_basket[:quantity] += 1
          break
        else
          @basket_contents << new_dish
          break
        end
      end
    end
  end

  def contents
    #returns basket contents
    @basket_contents
  end

  def format_contents
    #prints formatted contents of basket
    total_price = 0
    output = "Dishes currently in your basket:\n"
    @basket_contents.each do |dish|
     output += "#{dish[:name]}: £#{dish[:price]}: x#{dish[:quantity]}\n"
     total_price += (dish[:price] * dish[:quantity])
    end
    return output += "Total price: £#{total_price}"
  end
end