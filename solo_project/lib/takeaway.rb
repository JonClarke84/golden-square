require_relative 'dish'
require_relative 'menu'
require_relative 'basket'
require_relative 'order'
require_relative 'user_interface'

dish1 = Dish.new("Fish and Chips", 8.99)
dish2 = Dish.new("Chicken Tikka", 9.99)
dish3 = Dish.new("Sushi", 4.99)
dish4 = Dish.new("Stir Fry", 3.49)

menu = Menu.new
menu.add(dish1)
menu.add(dish2)
menu.add(dish3)
menu.add(dish4)

takeaway = UserInterface.new(menu)
takeaway.run
