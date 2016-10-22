class RunLengthEncoding
  def self.encode(word)
    output = ''
    counter = 1
    (0..(word.length - 1)).each do |index|
      if word[index] == word[index + 1]
        counter += 1
      else
        output << counter.to_s unless counter == 1
        output << word[index]
        counter = 1
      end
    end
    output
  end

  def self.decode(word)
    output = ''
    counter = ''
    (0..(word.length - 1)).each do |index|
      if /(\d+)/.match(word[index]) != nil
        counter << word[index]
      else
          counter.to_i > 1 ? output << word[index] * counter.to_i : output << word[index]
          counter = ''
      end
    end
    output
  end
end

module BookKeeping
  VERSION = 2
end