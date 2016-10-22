require 'securerandom'

class Robot

  attr_reader :name

  def initialize
    @name = letters + numbers
  end

  def reset
    old_name = @name
    initialize
    new_name = @name
    if old_name == new_name
      reset
    end
  end

  def letters
    letter = SecureRandom.base64(2).gsub(/[=+$\/0-9a-z]/,'')
    return letter if letter.length == 2 else letters
  end

  def numbers
    number = SecureRandom.random_number(1000)
    return number.to_s if number > 99 else numbers
  end

end

module BookKeeping
  VERSION = 2
end