def time_manager(text, word_rate)
    result = text.split(" ")
    fail "Please enter at least one word." if result.length < 1 
    fail "Please enter more than 0 words per minute" if word_rate < 1
    return "#{result.length/word_rate.to_f} minutes" 
end