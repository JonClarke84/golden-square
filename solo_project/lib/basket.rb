#lib/basket.rb
class Basket
  def initialize
    @basket_contents = []
  end
  
  def contains_new_dish?(basket_contents, new_dish)
    basket_contents.each do |dish|
      if dish[:name] == new_dish[:name]
        return true
      end
    end      
    return false
  end

  def add(dish) #accepts choices from customer
    #adds dish to basket, increasing quantity when selected multiple times
    new_dish = {
      name: dish.name,
      price: dish.price,
      quantity: 1
    }

    #TO BE SORTED OUT - NOT ADDING UP PROPERLY


    if @basket_contents == []
      new_dish[:quantity] = 0
      @basket_contents << new_dish
    end
    
    if contains_new_dish?(@basket_contents, new_dish)
      @basket_contents.each do |dish|
        if dish[:name] == new_dish[:name]
          dish[:quantity] += 1
          break
        end
      end
    else
      @basket_contents << new_dish
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
    return output += "Total price: £#{total_price.round(2)}"
  end
end