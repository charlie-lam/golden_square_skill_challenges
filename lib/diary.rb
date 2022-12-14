class Diary
    def initialize
        @list = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      # Returns nothing
      @list << entry
    end
  
    def all
      # Returns a list of instances of DiaryEntry
        return @list
    end
  
    def count_words
      # Returns the number of words in all diary entries
      # HINT: This method should make use of the `count_words` method on DiaryEntry.
      fail "There are no diary entries yet" if @list == []
      @list.map{|item| item.count_words}.sum
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.
      fail "There are no diary entries yet" if @list == []
      @list.map{|item| item.reading_time(wpm)}.sum
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
      fail "There are no diary entries yet" if @list == []
      cap = wpm*minutes
      @list.filter{|item| item.count_words - cap <=0}.sort_by{|item| item.count_words - cap}[-1]
    end
  end
  