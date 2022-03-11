require 'todo_list'
require 'todo'

RSpec.describe TodoList do
  
  context 'given an instance of Todo' do
    
    it 'adds an instance of Todo to the todo list' do
      todo_list = TodoList.new
      todo = Todo.new("Tune the guitar")
      expect(todo_list.add(todo)).to eq [todo]
    end
  end

  context 'given a list of todos' do
    it 'returns all non-done todos' do
      todo_list = TodoList.new

      todo1 = Todo.new("Tune the guitar")
      todo2 = Todo.new("Buy some picks")
      todo3 = Todo.new("Learn some songs")
      todo4 = Todo.new("Do some practise")
      todo5 = Todo.new("Organise the band")
      
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo_list.add(todo4)
      todo_list.add(todo5)

      todo1.mark_done!
      todo2.mark_done!
      todo3.mark_done!

      expect(todo_list.incomplete).to eq [todo4, todo5]
    end

    it 'returns all done todos' do
      todo_list = TodoList.new

      todo1 = Todo.new("Tune the guitar")
      todo2 = Todo.new("Buy some picks")
      todo3 = Todo.new("Learn some songs")
      todo4 = Todo.new("Do some practise")
      todo5 = Todo.new("Organise the band")
      
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo_list.add(todo4)
      todo_list.add(todo5)

      todo1.mark_done!
      todo2.mark_done!
      todo3.mark_done!

      expect(todo_list.complete).to eq [todo1, todo2, todo3]
    end
    
    it 'marks all tasks as done' do
      todo_list = TodoList.new
      
      todo1 = Todo.new("Tune the guitar")
      todo2 = Todo.new("Buy some picks")
      todo3 = Todo.new("Learn some songs")
      todo4 = Todo.new("Do some practise")
      todo5 = Todo.new("Organise the band")
      
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo_list.add(todo4)
      todo_list.add(todo5)
      
      todo_list.give_up!
      
      expect(todo_list.complete).to eq [todo1, todo2, todo3, todo4, todo5]
    end
  end
end