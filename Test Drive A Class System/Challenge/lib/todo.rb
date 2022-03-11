class Todo
  def initialize(task) # task is a string
   @todo = {
     task: task,
     status: false
   }
  end

  def task
    @todo[:task]
  end

  def mark_done!
    @todo[:status] = true
  end

  def done?
    if @todo[:status] == true
      return true
    else
     return false
    end
  end
end