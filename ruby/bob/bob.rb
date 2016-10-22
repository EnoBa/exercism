
class Bob
  def hey(saying)
    if saying.strip.empty?
      return 'Fine. Be that way!'
    elsif saying == saying.upcase && saying =~ /[a-zA-Z]/
      return 'Whoa, chill out!'
    elsif saying.end_with?('?')
      return 'Sure.'
    else
      return 'Whatever.'
    end
  end
end
