require_relative '../lib/todo'
require_relative '../lib/todo_list'
require 'rspec'

describe "Todo Integration"  do
  context "Return all incomplete tasks" do
    it "TodoLlist#incomplete Return a list of all incomplete strings" do
      tasks = ["wash dishes", "mop floor", "make sandwich", "buy food"]
      complete_tasks = ["wash bathroom", "mop kithen", "make turkey", "buy oreos"]
      todo_list_instance = TodoList.new
      tasks.map{|task| todo_list_instance.add(Todo.new(task))}
      complete_tasks.map do |task|
        todo_interface = Todo.new(task)
        todo_interface.mark_done!
        todo_list_instance.add(todo_interface)
      end
      result = todo_list_instance.incomplete
      expect(result).to eq tasks
    end

    it "TodoLlist#complete Return a list of all incomplete strings" do
      tasks = ["wash dishes", "mop floor", "make sandwich", "buy food"]
      complete_tasks = ["wash bathroom", "mop kithen", "make turkey", "buy oreos"]
      todo_list_instance = TodoList.new
      tasks.map{|task| todo_list_instance.add(Todo.new(task))}
      complete_tasks.map do |task|
        todo_interface = Todo.new(task)
        todo_interface.mark_done!
        todo_list_instance.add(todo_interface)
      end
      result = todo_list_instance.complete
      expect(result).to eq complete_tasks
    end
    it "TodoLlist#give_up! Return a list of all incomplete strings" do
      tasks = ["wash dishes", "mop floor", "make sandwich", "buy food"]
      complete_tasks = ["wash bathroom", "mop kithen", "make turkey", "buy oreos"]
      todo_list_instance = TodoList.new
      tasks.map{|task| todo_list_instance.add(Todo.new(task))}
      complete_tasks.map do |task|
        todo_interface = Todo.new(task)
        todo_interface.mark_done!
        todo_list_instance.add(todo_interface)
      end
      todo_list_instance.give_up!
      result = todo_list_instance.complete
      expect(result).to eq tasks.concat(complete_tasks)
    end
  end

end
