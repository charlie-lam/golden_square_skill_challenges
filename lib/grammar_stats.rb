class GrammarStats
    def initialize
      @state = {texts_checked: 0, texts_passed: 0}
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
        fail "Please enter text" if text == ""
        good_end = "!.?..."
        good_start = [*65..90]
        @state[:texts_checked] +=1
        if(good_start.include?(text[0].ord) && good_end.include?(text[-1]))
            @state[:texts_passed] +=1
            return true
        else
            return false
        end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      fail "No texts have been checked" if @state[:texts_checked] == 0
      (@state[:texts_passed]*100/ @state[:texts_checked]).round
    end
  end