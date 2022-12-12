require 'time_manager'

RSpec.describe "time manager method" do
    
    it "should return an error if no text entered" do
        expect {time_manager("", 200)}.to raise_error "Please enter at least one word."
    end

    it "should return a string with correct number" do
        expect(time_manager("This is example text for this time manager method design", 200)).to eq "0.05 minutes"
    end

    it "should return a string with correct number on more complex string" do
        expect(time_manager("To myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In just a second it was over. He was safe.", 200)).to eq "0.25 minutes"
    end

    it "should return an error if word count is 0" do
        expect {time_manager("Hello again this is a string", 0)}.to raise_error "Please enter more than 0 words per minute"
    end

end