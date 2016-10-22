class Prime
  def self.nth(n)
    if n < 1
      raise ArgumentError, 'No negative or 0th prime'
    end

    @primes = [2]
    while @primes[(n-1)] == nil
      next_prime(n)
    end
    @primes[n-1]
  end

  def self.next_prime(number)
    (2..(number * number)).each do |x|
      if !@primes.include?(x)
        unless (2..(x - 1)).any? { |y| x % y == 0}
          @primes << x
          return @primes
        end
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end