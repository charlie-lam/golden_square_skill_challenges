class Todo
    def initialize(task) # task is a string
    @task = {
      "task_text" => task,
      "done" => false
    }

    end
  
    def task
      @task["task_text"]
    end
  
    def mark_done!
      @task["done"] = true

      # Marks the todo as done
      # Returns nothing
    end
  
    def done?
      @task["done"]
      # Returns true if the task is done
      # Otherwise, false
    end
end