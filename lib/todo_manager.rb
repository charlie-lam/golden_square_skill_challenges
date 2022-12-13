class TodoManager
    def initialize
        @state = []
    end

    def add(task)
        fail "Please enter task" if task == ""
        @state << task
    end

    def view
        @state
    end

    def tick_off(task = @state[0])
        fail "Nothing to tick off" if @state == []
        fail "No such task" if not @state.include?(task) 
        @state.delete(task)
    end
end