class Die

  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat number
    if (number > 6 || number < 1)
      puts 'invalid number'
    else
      @numberShowing = number
    end
  end

end

dice = Die.new

puts dice.showing
puts dice.cheat(5)
puts dice.showing
