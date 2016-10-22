module BookKeeping
  VERSION = 3 # 255
end

class Hamming
  def self.compute(a,b)
    counter = 0
    if a.length < b.length
      raise ArgumentError, 'first string is smaller'
    elsif a.length > b.length
      raise ArgumentError, 'Second string is smaller'
    elsif
      a == b
      return 0
    else
      (0..a.length).each do |i|
        if a[i] != b[i]
          counter = counter + 1
        end
      end
      return counter

    end

  end
end
