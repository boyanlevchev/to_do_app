# The CONTROLLER
# The brains of our software -
# It defines the things a user can do with our software
# And it is responsible for telling the view and repository what to do

require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    # TO-DO
    # Ask user what task to create
    title = @view.ask_user_for_task
    # Create a new instance of a task
    task = Task.new(title)
    # Add instance to repository
    @repository.add_task(task)
  end

  def list_tasks
    # TO-DO
    # We fetch the tasks from repo
    tasks = @repository.all
    # we send the tasks to the front end view
    @view.show_tasks_to_user(tasks)
  end

  def mark_as_complete
    # TO-DO
    # For a nice UX, we first list the tasks
    # Before asking which task
    list_tasks
    # We tell the view to ask the user for a task index
    index = @view.complete_which_task
    # We fetch a task from our repository with the given index
    task = @repository.find(index)
    # We set the task instance as complete!
    task.set_task_as_complete
  end
end
