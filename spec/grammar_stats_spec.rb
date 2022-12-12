require 'grammar_stats'

RSpec.describe "grammar stats class" do
    it "should return an error if check method is passed an empty string" do
        grammar_stats = GrammarStats.new
        expect{grammar_stats.check("")}.to raise_error "Please enter text"
    end

    it "should return true if the text has good grammar" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("This is good grammar.")).to eq true
    end

    it "should return false if the text has poor grammar" do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.check("this is poor grammar")).to eq false
    end

    it "should return an error if no texts have been checked" do
        grammar_stats = GrammarStats.new
        expect{grammar_stats.percentage_good}.to raise_error "No texts have been checked" 
    end

    it "should return 100" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("This is good grammar.")
        expect(grammar_stats.percentage_good).to eq 100
    end

    it "should return 50" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("This is good grammar.")
        grammar_stats.check("this is poor grammar")
        expect(grammar_stats.percentage_good).to eq 50
    end

end