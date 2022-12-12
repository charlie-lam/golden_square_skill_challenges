def grammar_validator(text)
    fail "Please enter text" if text == ""
    good_end = "!.?..."
    good_start = [*65..90]
    good_start.include?(text[0].ord) and good_end.include?(text[-1]) ? true : false 
end