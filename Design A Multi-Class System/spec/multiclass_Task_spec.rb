require 'multiclass_Task'

RSpec.describe Task do
  context "given a string" do
    it "returns the string" do
      task = Task.new("Tune the guitar")
      expect(task.name).to eq "Tune the guitar"
    end

    it "marks a task as done" do
      task1 = Task.new("Tune the guitar")
      task2 = Task.new("Buy picks")
      task1.mark_done
      expect(task1.status).to eq true
      expect(task2.status).to eq false
    end
  end
end