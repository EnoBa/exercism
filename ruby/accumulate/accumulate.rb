class Array
  def accumulate (&block)
    accumulate_array = []

    each do |element|
      accumulate_array << (block.yield element)
    end
    accumulate_array
  end
end