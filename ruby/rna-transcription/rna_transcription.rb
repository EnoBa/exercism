 module BookKeeping
   VERSION = 4 # Where the version number matches the one in the test.
 end


class Complement
  def self.of_dna(strand)
    (0..strand.length-1).each do |i|
      case strand[i]
        when 'G'
          strand[i] = 'C'
        when 'C'
          strand[i] = 'G'
        when 'T'
          strand[i] = 'A'
        when 'A'
          strand[i] = 'U'
        else
          strand = ''
      end
    end
    strand
  end
end