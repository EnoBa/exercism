class SumOfMultiples
  def initialize(value1,value2,value3 = nil)
    @value1 = value1
    @value2 = value2
    @value3 = value3
    @multiples = []
  end

  def to(up_to)
    add_upp(@value1,up_to)
    add_upp(@value2,up_to)
    add_upp(@value3,up_to)
  end

  def add_upp(multiplier, up_to)
    (0..up_to).each do |element|
      if multiplier != nil && element * multiplier < up_to
        @multiples << element * multiplier
      end
      @multiples
    end

    @multiples.uniq!
    @multiples.reduce(:+)
  end

end
