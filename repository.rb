# Our database of sorts

class Repository
  def initialize
    @tasks = []
  end

  # Add a task to our database
  def add_task(task)
    @tasks << task
  end

  # Get all tasks from the database
  def all
    @tasks
  end

  # get a specific task from our database
  def find(index)
    @tasks[index]
  end
end
