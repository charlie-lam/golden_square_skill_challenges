require 'music_manager'

RSpec.describe "Music manager class" do
    it "should return an empty list" do
        music_manager = MusicManager.new
        expect(music_manager.view).to eq []
    end

    it "should raise an error if no argument is passed to add" do
        music_manager = MusicManager.new
        expect{music_manager.add()}.to raise_error "Please enter a track"
    end

    it "should raise an error if an empty string is passed" do
        music_manager = MusicManager.new
        expect{music_manager.add("")}.to raise_error "Please enter a track"
    end

    it "shold raise an error if a non string argument is passed" do
        music_manager = MusicManager.new
        expect{music_manager.add(44)}.to raise_error "Please enter a string track"
    end

    it "should return a list of songs with one entry" do
        music_manager = MusicManager.new
        music_manager.add("Another one bites the dust")
        expect(music_manager.view).to eq ["Another one bites the dust"]
    end

    it "should return a list of multiple songs" do
        music_manager = MusicManager.new
        music_manager.add("Another one bites the dust")
        music_manager.add("Rocket man")
        expect(music_manager.view).to eq ["Another one bites the dust", "Rocket man"]
    end

    it "should raise an error if trying to add a track already added" do
        music_manager = MusicManager.new
        music_manager.add("Another one bites the dust")
        expect{music_manager.add("Another one bites the dust")}.to raise_error "This track already exists in the list"
    end
end