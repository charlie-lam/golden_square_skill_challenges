class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      # Suspicious
      counter = Hash.new(0)
      most_common = nil
      # Suspicious 1 starting value
      most_common_count = 0  
      @text.chars.each do |char|
        #binding.irb
        next unless is_letter?(char)
        #Suspicious potential + 2
        counter[char] = counter[char] + 1
        if counter[char] > most_common_count
          most_common = char
          #Suspicious
          most_common_count = counter[char]
        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end
  
  counter = LetterCounter.new("Digital Punk")
  p counter.calculate_most_common

  counter = LetterCounter.new("Digital init")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]