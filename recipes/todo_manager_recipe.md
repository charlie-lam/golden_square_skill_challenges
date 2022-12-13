# TODO manager Class Design Recipe
## Describe the Problem
 _Put or write the user story here. Add any clarifying notes you might have.

    As a user
    So that I can keep track of my tasks
    I want a program that I can add todo tasks to and see a list of them.

    As a user
    So that I can focus on tasks to complete
    I want to mark tasks as complete and have them disappear from the list.

## Design the Class Interface
 _Include the initializer and public methods with all parameters and return values.

```ruby
    class TodoManager 
        def initialize
            "Should create an empty list"
        end

        def add(task)
            # Add task to list if not an empty string, returns nothing
        end

        def view
            # returns task list
        end

        def tick_off(task = @state[0]) # If no task to delete is entered it should delete the first in the list
            # Should delete the task entered from the list, returns nothing
        end

    end

```

## Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

```ruby
    todo_manager = TodoManager.new
    expect{todo_manager.add("")}.to raise_error "Please enter task"

    todo_manager = TodoManager.new
    todo_manager.add("Wash plates")
    expect(todo_manager.view).to eq ["Wash plates"]

    todo_manager = TodoManager.new
    todo_manager.add("Wash plates")
    todo_manager.add("Mop floor")
    expect(todo_manager.view).to eq ["Wash plates", "Mop floor"]

    todo_manager = TodoManager.new
    expect(todo_manager.view).to eq []

    todo_manager = TodoManager.new
    todo_manager.add("Wash plates")
    todo_manager.add("Mop floor")
    todo_manager.tick_off()
    expect(todo_manager.view).to eq ["Mop floor"]
    
    todo_manager = TodoManager.new
    todo_manager.add("Wash plates")
    todo_manager.add("Mop floor")
    todo_manager.tick_off("Mop floor")
    expect(todo_manager.view).to eq ["Wash plates"]
    
    todo_manager = TodoManager.new
    expect{todo_manager.tick_off()}.to raise_error "Nothing to tick off"
    
    todo_manager = TodoManager.new
    todo_manager.add("Mop floor")
    expect{todo_manager.tick_off("Wash plates")}.to raise_error "No such task" 

```

Encode each example as a test. You can add to the above list as you go.

## Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.