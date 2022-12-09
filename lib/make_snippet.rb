def make_snippet(str)
    # Ternary operator to check if the split string creates an array longer than 5 items and returns the required result.
    str.split(" ").length > 5 ? str.split(" ")[0,5].join(" ").concat("...") : str
end