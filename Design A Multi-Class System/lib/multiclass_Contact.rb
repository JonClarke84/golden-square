class Contact
  def initialize(name, number) # name, number are strings
    @name = name
    @number = number
  end

  def name
    @name
  end

  def number
    @number
  end

  def display_contact
    "#{@name} - #{@number}"
  end
end