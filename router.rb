class Router
  def initialize(controller)
    @controller = controller
  end

  # The method that runs our entire application
  # Infinitely, until user quits
  def run
    loop do
      puts "What would you like to do?"
      puts "1. Add a task"
      puts "2. List all tasks"
      puts "3. Mark task as complete"
      puts "4. Quit"
      choice = gets.chomp.to_i
      case choice
      when 1
        @controller.add_task
      when 2
        @controller.list_tasks
      when 3
        @controller.mark_as_complete
      when 4
        # Quit somehow
        break
      else
        puts "Wrong input"
      end

    end
  end
end
