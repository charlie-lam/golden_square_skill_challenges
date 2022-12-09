require 'count_words'

RSpec.describe "Count words method" do
    context "Takes an empty string" do
        it "Returns 0" do
            expect(count_words("")).to eq 0
        end
    end

    context "Takes an 5 word string" do
        it "Returns 5" do
            expect(count_words("Hello this is the fifth")).to eq 5
        end
    end

end