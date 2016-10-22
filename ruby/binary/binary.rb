class Binary
  def initialize(binary_number)
    @binary_number = binary_number
    if @binary_number.gsub(/[^01]/i, '') != @binary_number
      raise ArgumentError, 'first string is smaller'
    end
  end

  def to_decimal
    decimal_number = 0
    counter = 0
    (1..(@binary_number.length)).each do |index|
      if @binary_number[index * -1] == '1'
        decimal_number += (2**counter)
      end
      counter += 1
    end
    decimal_number
  end
end

module BookKeeping
  VERSION = 2
end