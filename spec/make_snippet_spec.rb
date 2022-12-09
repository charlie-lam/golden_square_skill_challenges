require 'make_snippet'

RSpec.describe "Make snippet method" do
    it "Returns the first five wortds of a string with ... appended" do
        expect(make_snippet("Hello this is the fifth word")).to eq "Hello this is the fifth..."
    end

    it "Returns all words in the string" do
        expect(make_snippet("Only three words")).to eq "Only three words"
    end

end