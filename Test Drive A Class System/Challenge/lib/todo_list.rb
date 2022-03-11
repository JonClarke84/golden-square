require 'todo'

class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) 
    @todo_list << todo
  end

  def incomplete
    incomplete_tasks = []

    @todo_list.each do |task|
      if task.done? == false
        incomplete_tasks << task
      end
    end
    return incomplete_tasks     
  end

  def complete
    complete_tasks = []

    @todo_list.each do |task|
      if task.done? == true
        complete_tasks << task
      end
    end
    return complete_tasks
  end

  def give_up!
    @todo_list.each do |task|
      task.mark_done!
    end
    @todo_list
  end
end