def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
    [*97..122].include?(char.ord) ? counter[char] += 1 : next
    end
    counter.to_a.sort_by{ |k, v| v }[-1][0]
  end
  
  # Intended output:
  # 
  get_most_common_letter("the roof, the roof, the roof is on fire!")