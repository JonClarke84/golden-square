Here is a project to test your golden square skills overall:

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

```ruby
#/lib/dish.rb
class Dish
  def initialize(name, price) #name is a string, price is a float
    #...
  end

  def name
    #returns the name
  end

  def price
    #returns the price
  end

  def display
    #formats the dish to display nicely
  end
end
```

```ruby
#/lib/menu.rb
class Menu
  def initialize
    #creates empty array to store the menu
  end

  def add(dish) #dish is an instance of the Dish class
    #adds dish to the menu
  end

  def list
    #shows all dishes on the menu, with index ID
  end
end
```

```ruby
#lib/basket.rb
class Basket
  def initialize
    #sets hash ready for dishes & quantity
  end

  def add(dish) #accepts choices from customer
    #adds dish to basket, increasing quantity if selected multiple times
  end

  def contents
    #returns formatted contents of basket
  end
end
```

```ruby
#lib/order.rb
class Order
  def initialize(order) #takes a list of contents from Basket
  end

  def print_receipt
    #prints a reciept
  end

  def notify
    #notifies the user by text that their order is on the way
  end
end
```

```ruby
class Takeaway
  # the user interface and controlling task
  def run
    #runs the menu in a loop until order.notify is run
  end

  def select
    #presents the user with a selection of dishes and asks for the choice
  end
end
```

Use the twilio-ruby gem to implement this next one. You will need to use doubles too.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.
