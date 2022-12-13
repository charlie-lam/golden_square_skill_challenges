require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do
    it "should return a list of diary entries" do
        diary = Diary.new
    #     entry = DiaryEntry.new("title", "contents")
    #     diary.add(entry) 
    #     result = diary.all
    #     expect(result).to eq [entry]
    end
end