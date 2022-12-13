# Music manager Class Design Recipe
## Describe the Problem
_Put or write the user story here. Add any clarifying notes you might have.

    As a user
    So that I can keep track of my music listening
    I want to add tracks I've listened to and see a list of them.


## Design the Class Interface
Include the initializer and public methods with all parameters and return values.

```ruby
    class MusicManager
        def initialize
            # Sets the state of an empty list
        end

        def add(track = "") # track should be a string if called without an argument it will default to an empty string
            # retuns nothing
        end

        def view
            # retuns the list of music
        end
    end
```

## Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

```ruby
    music_manager = MusicManager.new
    expect(music_manager.view).to eq []

    music_manager = MusicManager.new
    expect{music_manager.add()}.to raise_error "Please enter a track"

    music_manager = MusicManager.new
    expect{music_manager.add("")}.to raise_error "Please enter a track"

    music_manager = MusicManager.new
    music_manager.add("Another one bites the dust")
    expect(music_manager.view).to eq ["Another one bites the dust"]

    music_manager = MusicManager.new
    music_manager.add("Another one bites the dust")
    music_manager.add("Rocket man")
    expect(music_manager.view).to eq ["Another one bites the dust", "Rocket man"]

    music_manager = MusicManager.new
    music_manager.add("Another one bites the dust")
    expect{music_manager.add("Another one bites the dust")}.to raise_error "This track already exists in the list"
```

Encode each example as a test. You can add to the above list as you go.

## Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.