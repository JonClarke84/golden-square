class Takeaway
  def run
    Kernel.puts "Welcome to The Restaurant. Please select your order from the list below."
    Kernel.puts "Here is the list of items"
    Kernel.print "Make your selection: "
    selection = Kernel.gets.chomp
  end
end

takeaway = Takeaway.new

takeaway.run