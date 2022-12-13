require 'diary'

RSpec.describe Diary do
    it "should return a list of instances" do
        diary = Diary.new
        diary.add("entry")
        result = diary.all
            expect(result).to eq ["entry"]
    end
end