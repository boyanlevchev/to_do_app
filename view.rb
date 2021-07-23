# The VIEW
# We separate the functionality of our software
# The view only handles what the user sees
# And sends user input to the controller

class View
  def ask_user_for_task
    puts "What task would you like to add?"
    print "> "
    return gets.chomp
  end

  def show_tasks_to_user(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task.completed ? "[X]" : "[ ]"} #{task.title}"
    end
  end

  def complete_which_task
    puts "Which task number do you want to mark as complete?"
    print "> "
    return gets.chomp.to_i - 1
  end
end
