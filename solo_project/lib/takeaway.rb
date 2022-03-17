require 'dish'
require 'menu'
require 'basket'
require 'order'

class Takeaway
  def initialize(io, menu)
    @io = io
    @menu = menu
  end

  def run
    @io.puts "Welcome to The Restaurant."
    @io.puts "Please select your order from the list below."
    @io.puts "#{@menu.list}"
    @io.print "Make your selection: "
    selection = @io.gets.chomp.to_i
  end
end