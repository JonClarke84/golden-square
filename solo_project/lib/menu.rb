#/lib/menu.rb
class Menu
  def initialize(io)
    @menu = []
    @io = io
  end

  def add(dish) #dish is an instance of the Dish class
    @menu << dish
  end

  def select(selection)
    @menu[selection-1]
  end

  def list
    #shows all dishes on the menu, with index ID
    @io.puts "Here are the available dishes"
    @menu.each_index do |index|
      @io.puts "#{index+1}. #{@menu[index].display}"
    end
  end
end
