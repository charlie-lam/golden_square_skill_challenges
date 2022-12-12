class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      # ...
      @state = {title: title, contents: contents, remaining: contents.split(" ")}
    end
  
    def title
      # Returns the title as as a string
      @state[:title]
    end
  
    def contents
      # Returns the contents as a string
      @state[:contents]
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
      @state[:contents].split(" ").length
    end
  
    def reading_time(wpm) # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
      fail "Please enter a wpm integer greater than 0" if wpm < 1
      (count_words/ wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
        fail "Please enter a wpm integer greater than 0" if wpm < 1
        fail "Please enter a time in minutes integer greater than 0" if minutes < 1
        
        $temp_arr = @state[:remaining]
        total_words = wpm*minutes
        if total_words >= $temp_arr.length
            final_index = $temp_arr.length
            @state[:remaining] = @state[:contents].split(" ")
        else
            final_index = total_words
            @state[:remaining] = $temp_arr[final_index,$temp_arr.length]
        end
        
        $temp_arr[0,final_index].join(" ")
    
    end
  end