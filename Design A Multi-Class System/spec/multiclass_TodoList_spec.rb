require 'multiclass_TodoList.rb'
require 'multiclass_Task.rb'

RSpec.describe TodoList do
  context 'given a few tasks' do
    it 'returns the incomplete tasks' do
      todo_list = TodoList.new
      task1 = Task.new("Eat the burger")
      task2 = Task.new("Clean my hands")
      todo_list.add(task1)
      todo_list.add(task2)
      expect(todo_list.incomplete).to eq [task1, task2]
    end

    it 'returns the complete tasks' do
      todo_list = TodoList.new
      task1 = Task.new("Eat the burger")
      task2 = Task.new("Clean my hands")
      todo_list.add(task1)
      todo_list.add(task2)
      task2.mark_done
      expect(todo_list.complete).to eq [task2]
    end

  end
end
