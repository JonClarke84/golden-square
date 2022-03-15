require 'task_formatter'

RSpec.describe TaskFormatter do
  context 'given a task' do
    it 'returns a complete task formatted correctly' do
      task = double :task, title: "I am complete", complete?: true
      formatted_task = TaskFormatter.new(task)
      expect(formatted_task.format).to eq "- [x] I am complete"
    end

    it 'returns an incomplete task formatted correctly' do
      task = double :task, title: "I am incomplete", complete?: false
      formatted_task = TaskFormatter.new(task)
      expect(formatted_task.format).to eq "- [ ] I am incomplete"
    end
  end
end