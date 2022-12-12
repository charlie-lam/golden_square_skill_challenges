def todo_tracker(text)
    fail "Please enter text" if text == ""
    text.include?("#TODO") ? true : false
end