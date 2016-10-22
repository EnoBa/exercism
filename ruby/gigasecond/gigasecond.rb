module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Gigasecond
  def self.from(a)
    return a + 1000000000
  end
end
