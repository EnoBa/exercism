class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
#    (0..@number).inject {|sum, n| sum + n} ** 2
    (0..@number).reduce(:+) ** 2
  end

  def sum_of_squares
    (0..@number).inject {|sum, n| sum + (n * n)  }

  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end