class TodoList
    def initialize
      @list = []
    end
  
    def add(todo) # todo is an instance of Todo
    @list << todo
    end
  
    def incomplete
      @list.filter{|task_instance| task_instance.done? == false}.map{|task_instance| task_instance.task}
      # Returns all non-done todos
    end
  
    def complete
      @list.filter{|task_instance| task_instance.done?}.map{|task_instance| task_instance.task}
      # Returns all complete todos
    end
  
    def give_up!
      @list.map{|task_instance| task_instance.mark_done!}
      # Marks all todos as complete
    end
  end