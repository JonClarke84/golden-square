require 'dish'
require 'menu'
require 'basket'
require 'order'

class Takeaway
  def initialize(io, menu, basket)
    @io = io
    @menu = menu
    @basket = basket
  end

  def select_dishes
    #loop do
      @io.puts "Please select your order from the list below."
      @io.puts "#{@menu.list}"
      @io.print "Make your selection: "
      selection = @io.gets.chomp.to_i
      
      @basket.add(@menu.select(selection))
    
      @io.puts "You have added #{@basket.contents[-1].name}."
      @io.print "Make another choice? y/n: "
      
      #break if @io.gets.chomp.downcase == "n"
    #end
  end

  def run
    @io.puts "Welcome to The Restaurant."
    select_dishes
    #order = Order.new(@io, @basket)
    #order.print_receipt
  end
end