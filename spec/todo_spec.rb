require 'todo_manager'

RSpec.describe "Todo Manager class" do
    it "should throw an error if no task is entered" do
        todo_manager = TodoManager.new
        expect{todo_manager.add("")}.to raise_error "Please enter task"
    end

    it "should add succesfully then show the task in an array" do
        todo_manager = TodoManager.new
        todo_manager.add("Wash plates")
        expect(todo_manager.view).to eq [{task: "Wash plates", done:false}]
    end

    it "should be able to add mutiple tasks then view them" do
        todo_manager = TodoManager.new
        todo_manager.add("Wash plates")
        todo_manager.add("Mop floor")
        expect(todo_manager.view).to eq [{task: "Wash plates", done:false}, {task: "Mop floor", done: false}]   
    end

    it "should return an empty array if no tasks are added" do
        todo_manager = TodoManager.new
        expect(todo_manager.view).to eq []
    end

    it "should return an array of objects " do
        todo_manager = TodoManager.new
        todo_manager.add("Wash plates")
        todo_manager.add("Mop floor")
        todo_manager.tick_off()
        expect(todo_manager.view).to eq ["Mop floor"]
    end

    it "should return an array without the todo that is entered in the tick_off method" do
        todo_manager = TodoManager.new
        todo_manager.add("Wash plates")
        todo_manager.add("Mop floor")
        todo_manager.tick_off("Mop floor")
        expect(todo_manager.view).to eq ["Wash plates"]
    end

    it "should raise an error when trying to tick_off an empty list" do
        todo_manager = TodoManager.new
        expect{todo_manager.tick_off()}.to raise_error "Nothing to tick off" 
    end

    it "should raise an error if a task to tick off isn't in the list" do
        todo_manager = TodoManager.new
        todo_manager.add("Mop floor")
        expect{todo_manager.tick_off("Wash plates")}.to raise_error "No such task" 
    end

end