require 'todo_tracker'

RSpec.describe " todo_tracker method" do
    it "should throw an error when empty string entered" do
        expect{todo_tracker("")}.to raise_error "Please enter text"
    end

    it "should return false when no #TODO in text" do
        expect(todo_tracker("This should return false")).to eq false
    end

    it "should return true when #TODO is in the text" do
        expect(todo_tracker("#TODO : Finish Makers")).to eq true
    end

    it "should also return true when #TODO is randomnly placed in text" do
        expect(todo_tracker("This won't make sense but still pass #TODO")).to eq true
    end
end