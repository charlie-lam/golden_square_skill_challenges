require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do
    it "should return a list of diary entries" do
        diary = Diary.new
        entry_one = DiaryEntry.new("title1", "contents1")
        entry_two = DiaryEntry.new("title2", "contents2")
        diary.add(entry_one) 
        diary.add(entry_two) 
        result = diary.all
        expect(result).to eq [entry_one, entry_two]
    end

    it "should return the total word count of contents of all the entries" do
        diary = Diary.new
        entry_one = DiaryEntry.new("title1", "contents1")
        entry_two = DiaryEntry.new("title2", "contents2")
        diary.add(entry_one) 
        diary.add(entry_two)
        expect(diary.count_words).to eq 2
    end

    it "should return the reading time of all contents in the diary" do
        diary = Diary.new
        entry_one = DiaryEntry.new("title1", "contents1")
        entry_two = DiaryEntry.new("title2", "contents2")
        diary.add(entry_one) 
        diary.add(entry_two)
        expect(diary.reading_time(1)).to eq 2
    end

    it "should return the reading time of all contents in the diary" do
        diary = Diary.new
        entry_one = DiaryEntry.new("title1", "contents1")
        entry_two = DiaryEntry.new("title2", "contents2")
        diary.add(entry_one) 
        diary.add(entry_two)
        expect(diary.reading_time(1)).to eq 2
    end

    it "should return entry_three as its the best match" do
        diary = Diary.new
        entry_one = DiaryEntry.new("title1", "contents1")
        entry_two = DiaryEntry.new("title2", "contents2 this is five words")
        entry_three = DiaryEntry.new("title3", "contents3 only three")
        diary.add(entry_one) 
        diary.add(entry_two)
        diary.add(entry_three)
        result = diary.find_best_entry_for_reading_time(4,1)
        expect(result).to eq entry_three
    end

    it "should return entry_two as its the best match" do
        diary = Diary.new
        entry_one = DiaryEntry.new("title1", "contents1")
        entry_two = DiaryEntry.new("title2", "contents2 this is five words")
        entry_three = DiaryEntry.new("title3", "contents3 only three")
        diary.add(entry_one) 
        diary.add(entry_two)
        diary.add(entry_three)
        result = diary.find_best_entry_for_reading_time(4,2)
        expect(result).to eq entry_two
    end
end