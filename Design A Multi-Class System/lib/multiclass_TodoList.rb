class TodoList
  def initialize
    @todo_list = []
  end

  def add(task) # task is an instance of Task
   @todo_list << task
  end

  def incomplete
    incomplete = []
    @todo_list.each do |todo|
      if todo.status == false
        incomplete << todo
      end      
    end
    incomplete
  end

  def complete
  # returns a list of complete tasks
  end

  def give_up!
  # returns nothing
  end
end