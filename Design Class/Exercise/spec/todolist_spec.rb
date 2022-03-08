require 'todolist'

RSpec.describe TodoList do
  it "prints the list" do
    task = TodoList.new("Take the dog for a walk")
    result = task.print
    expect(result).to eq "Take the dog for a walk"
  end

  it "deletes a task" do
    task = TodoList.new("Take the dog for a walk")
    task.add("clean the windows")
    expect(task.complete("clean the windows")).to eq ["Take the dog for a walk"]
  end 

  it "adds a task" do
    task = TodoList.new("Take the dog for a walk")
    expect(task.add("clean the windows")).to eq ["Take the dog for a walk", "clean the windows"]
  end
end
