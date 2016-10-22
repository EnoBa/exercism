class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words = {}
#    @phrase.downcase.scan(/[\w']+/).each do |word|
    @phrase.downcase.scan(/(?!\W)[\w'"]+(?<!\W)/).each do |word|
      if words.include?(word)
        words[word] = words[word] + 1
      else
        words[word] = 1
      end
    end
    words
  end
end

module BookKeeping
  VERSION = 1
end