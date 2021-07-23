# 1. Task list
# array of tasks

# Checklist:
# indivudal tasks

# should be able to create/save tasks
# Should be able to list all the tasks
# should be able to mark as complete

# should be able to delete tasks

# Task:
# ability to mark task as completed
# content - i.e. "I need to go to grocery store"

# The task MODEL
# The model represents the mould or the template
# That will then use to populate our software with
# Interactice and dynamic data
# Bring it to life!

class Task
  # We want to be able to access the title and completed
  attr_reader :title
  attr_reader :completed

  def initialize(title)
    @title = title
    @completed = false
  end

  # We create a method to set our task as complete
  def set_task_as_complete
    @completed = true
  end
end
