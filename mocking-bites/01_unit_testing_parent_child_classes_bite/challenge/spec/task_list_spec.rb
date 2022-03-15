require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  it "given some tasks, it returns a list of tasks" do
        task_list = TaskList.new
        task1 = double(:task)
        task2 = double(:task)
        task3 = double(:task)
        task_list.add(task1)
        task_list.add(task2)
        task_list.add(task3)
        expect(task_list.all).to eq [task1, task2, task3]
  end

  it "returns false if there are no tasks in the list" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns false if there is an incomplete task in the list" do
    task_list = TaskList.new
    task_list.add(double(:task, complete?: true))
    task_list.add(double(:task, complete?: true))
    task_list.add(double(:task, complete?: false))
    expect(task_list.all_complete?).to eq false
  end

  it "returns true if all tasks are complete" do
    task_list = TaskList.new
    task_list.add(double(:task, complete?: true))
    task_list.add(double(:task, complete?: true))
    task_list.add(double(:task, complete?: true))
    expect(task_list.all_complete?).to eq true
  end
  
end