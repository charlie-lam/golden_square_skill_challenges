require 'diary'

RSpec.describe Diary do
    it "should return a list of instances" do
        diary = Diary.new
        diary.add("entry")
        result = diary.all
            expect(result).to eq ["entry"]
    end

    it "should return an empty list" do
        diary = Diary.new
        expect(diary.all).to eq []
    end

    it "should raise error when count words is used on an empty list" do
        diary = Diary.new
        expect{diary.count_words}.to raise_error  "There are no diary entries yet"
    end

    it "should raise an error when reading_time is used on an empty list" do
        diary = Diary.new
        expect{diary.reading_time(50)}.to raise_error "There are no diary entries yet"
    end

    it "should raise an error when find_best_entry_for_reading_time is used on an empty list" do
        diary = Diary.new
        expect{diary.find_best_entry_for_reading_time(50, 1)}.to raise_error "There are no diary entries yet"
    end
end