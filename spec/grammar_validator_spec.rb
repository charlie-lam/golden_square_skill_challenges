require 'grammar_validator'

RSpec.describe "grammar validator method" do
    it "should give an error on empty string argument" do
        expect {grammar_validator("")}.to raise_error "Please enter text"
    end

    it "should return false when the grammar is wrong" do
        expect(grammar_validator("hello this won't work")).to eq false
    end

    it "should return true when a correct sentence is passed" do
        expect(grammar_validator("Much better grammar!")).to eq true
    end
    
end