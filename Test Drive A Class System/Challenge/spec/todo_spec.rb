require 'todo'

RSpec.describe Todo do
  context 'given a task' do

    it 'creates a new todo and returns it as a string' do
      todo = Todo.new("Tune the guitar")
      expect(todo.task).to eq "Tune the guitar"
    end
  end

  context 'with a task already loaded' do
    it 'marks a task as done and returns it' do
      task = Todo.new("I am a task")
      task.mark_done!
      expect(task.done?).to eq true
    end
  end
end