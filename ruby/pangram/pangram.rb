class Pangram
  def self.is_pangram?(str)
    str.downcase!
    ('a'..'z').each {|char| return false unless str.include?(char) }
  end
end

module BookKeeping
  VERSION = 2
end