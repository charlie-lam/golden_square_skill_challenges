require 'diary_entry'

RSpec.describe "Diary entry Class" do
    it "Should return the title of the diary entry" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        expect(entry.title).to eq "Dec 12th"
    end

    it "should return the contents of the diary entry" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        expect(entry.contents).to eq "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe."
    end

    it "should return the word count of the diary entry" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        expect(entry.count_words).to eq 50
    end

    it "should return the number of minutes it takes to read the contetns of the diary entry" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        expect(entry.reading_time(50)).to eq 1
    end

    it "should fail with words per minute when less than 1" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        expect{entry.reading_time(0)}.to raise_error "Please enter a wpm integer greater than 0"
    end

    it "should fail with words per minute when less than 1" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        expect{entry.reading_chunk(0,1)}.to raise_error "Please enter a wpm integer greater than 0"
    end

    it "should fail when minutes is less than 1" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        expect{entry.reading_chunk(25,0)}.to raise_error "Please enter a time in minutes integer greater than 0"
    end

    it "should return the first half of the contents" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        expect(entry.reading_chunk(25,1)).to eq "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy" 
    end

    it "should return the second half of the contents" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        entry.reading_chunk(25,1)
        expect(entry.reading_chunk(25,1)).to eq "venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe." 
    end

    it "should return the second half of the contents" do
        entry = DiaryEntry.new("Dec 12th", "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy venom. Shrieking, he leapt with mongoose agility. One hand snaked towards the tap and turned rapidly. In a second it was over. He was safe.")
        entry.reading_chunk(25,1)
        entry.reading_chunk(25,1)
        expect(entry.reading_chunk(25,1)).to eq "To his myopic eyes the shower unit head resembled a cobra, poised to strike. Mistakenly he hit the cold tap—in January. The shower spat icy" 
    end

end