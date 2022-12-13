class MusicManager
    def initialize
        @state = []
    end

    def add(track = "")
        fail "Please enter a track" if track == ""
        fail "Please enter a string track" if not track.is_a? String
        fail "This track already exists in the list" if @state.include?(track)
        @state << track
    end

    def view
        @state
    end
end