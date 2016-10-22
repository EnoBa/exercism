class Sieve
  def initialize(start)
    @start = start
  end

  def primes
    if @start < 2
      return []
    end

    array = Array.new(@start-1) { |index| index+2}

    array.each do |number|
    if array[number] == nil
      return array
    end

    multiplier = number
     (number..array.length).each do |non_prime|
        if array[non_prime] == nil
          break
        end
        if array[non_prime] % multiplier == 0
          array.delete(array[non_prime])
        end
      end
    end
    array
  end
end