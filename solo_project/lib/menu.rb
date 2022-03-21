# /lib/menu.rb
class Menu
  def initialize
    @menu = []
  end

  def add(dish) # dish is an instance of the Dish class
    @menu << dish
  end

  def select(selection)
    @menu[selection - 1]
  end

  def list
    # shows all dishes on the menu, with index ID
    @menu.each_index do |index|
      puts "#{index + 1}. #{@menu[index].display}"
    end
  end
end
