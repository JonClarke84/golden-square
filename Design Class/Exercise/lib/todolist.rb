class TodoList

  def initialize(todo)
    @list = [todo]
  end 

  def add(todo)
    @list << todo
  end

  def complete(task)
    @list.delete_if { |item| item === task}
  end

  def print
    @list.join(", ")
  end 
end