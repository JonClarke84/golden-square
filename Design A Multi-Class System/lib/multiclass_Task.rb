class Task
  def initialize(name) #name is a string
    @task = {
      name: name,
      status: false
    }
  end

  def name
   @task[:name]
  end

  def mark_done
    @task[:status] = true
  end

  def status
    @task[:status]
  end
end