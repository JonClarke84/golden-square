require_relative 'basket'
require_relative 'send_sms'

class UserInterface
  def initialize(menu)
    @menu = menu
    @basket = Basket.new
  end

  def select_dishes
    loop do
      puts "Please select your dish from the list below."
      @menu.list
      print "Make your selection: "
      selection = gets.chomp.to_i
      
      @basket.add(@menu.select(selection))
      
      puts "#{@basket.format_contents}."
      print "Make another choice? y/n: "

      input = gets.chomp.downcase 
      
      while input != "n" && input != "y"
        puts "Please enter y or n: "
        input = gets.chomp.downcase
      end

      if input == "n"
        return @basket
      end
      puts "\e[H\e[2J"
    end
  end

  def run
    puts "Welcome to The Restaurant."
    select_dishes
    order = Order.new(@basket)
    puts order.print_receipt
    send_sms(order.print_receipt)
  end
end
