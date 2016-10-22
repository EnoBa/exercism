class Grains
  def self.square(squares)
    2 ** (squares - 1)
  end

  def self.total
    grains = 0
    (1..64).each do |squares|
      grains += self.square(squares)
    end
    grains
  end
end