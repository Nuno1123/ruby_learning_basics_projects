class Dog

  def initialize name
    @name = name
    @dog_energy = 10
    @dog_stomach = 10
    @dog_intestines = 0
    @dog_happyness = 5
    @alive = true
    @asleep = false

    puts @name + ' arrived home from the Border Collie Kennel Club'
  end

  def score
    puts 'energy: ' + @dog_energy.to_s
    puts 'stomach: ' + @dog_stomach.to_s
    puts 'intestines: ' + @dog_intestines.to_s
    puts 'happyness: ' + @dog_happyness.to_s
    puts 'is alive: ' + @alive.to_s
    puts 'is sleeping: ' + @asleep.to_s
  end

  def play_fetch
    if sleepy?
      puts @name + ' doesn\'t moved a muscle...'
      score
    else
      puts @name + ' is playing fetch! She\'s enjoyin\' chasing that furry ball'
      score
      if @dog_happyness < 10
        # adds 1 point of happyness
        @dog_happyness += 2
      end
      # removes 2 points of energy
      @dog_energy -= 1
    end
    # passes time
    time_goes_on
  end

  def feed
    if not hungry?
      puts @name + ' pukes! She feels sad and sick now!'
      score
      @dog_stomach = 4
      @dog_energy -= 1
      @dog_happyness -= 1
    else
      puts @name + ' ate every single piece of that delicious food!!!'
      score
      @dog_stomach += 2
      if @dog_happyness < 10
        @dog_happyness += 2
      end
      if @dog_energy < 9
        @dog_energy += 2
      end
    end
    score
    time_goes_on
  end

  def take_for_a_walk
    if sleepy?
      puts @name + ' doesn\'t moved a muscle...'
      score
    else
      puts @name + ' goes for a walk in tha park'
      score
      @dog_energy -= 1
      if @dog_happyness < 10
        @dog_happyness += 2
      end
      if poopy?
        puts @name + ' takes a shit'
        score
        @dog_intestines = 0
      end
    end
    time_goes_on
  end

  def sleep
    if not sleepy?
      puts @name + ' makes the abandoned puppy face'
      score
      @dog_happyness -= 1
    else
      puts @name + ' takes a lovely nap'
      score
      @asleep = true
      @dog_energy = 10
      if @dog_happyness < 10
        @dog_happyness += 2
      end
    end
    time_goes_on
    puts @name + ' woke up full of energy!!'
    score
    @sleep = false
  end

  def training
    if not sleepy?
      puts @name + ' doesn\'t moved a muscle...'
      score
    else
      puts @name + ' is learning a new set of tricks'
      score
      if (@dog_happyness < 10)
        # adds 1 point of happyness
        @dog_happyness += 2
      end
      # removes 2 points of energy
      @dog_energy -= 2
    end
    # passes time
    time_goes_on
  end

  def is_alive
    return @alive
  end

  def time_goes_on
    if (dead_tired? || starved? || ashamed? || miserable?)
      if dead_tired?
        puts @name + ' has collapsed! You overworked him! ' + @name + ' is dead, you piece of shitty parent!!'
        score
      elsif starved?
        puts @name + ' has died of hungry!! Who tha fuck you think you are?! You\'re a beast!!'
        score
      elsif ashamed?
        puts @name + ' has jumped from the balcony!! ' + @name + ' shitted itself and jumped to its death cause it was ashamed!! SHAME ON YOU!!'
        score
      else
        puts @name + ' felt so alone it ran away from home!! While doing so, a truck drove by it!! ' + @name + ' has died and is now glued to the street road! You\'re the devil!!'
        score
      end

      @alive = false
      exit
    end

    @dog_energy -= 1
    @dog_happyness -= 1

    if @dog_stomach > 0
      @dog_stomach -= 1
      @dog_intestines += 1
    end

    if (hungry? || poopy?)
      if @asleep
        puts @name + ' wakes up suddenly and barks!!!'
        score
      end
    end
    score
  end

  private

  def sleepy?
    @dog_energy <= 2
  end

  def dead_tired?
    @dog_energy <= 0
  end

  def starved?
    @dog_stomach <= 0
  end

  def hungry?
    @dog_stomach <= 6
  end

  def poopy?
    @dog_intestines > 4
  end

  def ashamed?
    @dog_intestines >= 10
  end

  def happy?
    @dog_happyness > 4
  end

  def miserable?
    @dog_happyness <= 0
  end



end

dog = Dog.new 'Yoshi'

def play pet
  while pet.is_alive

    user_action = nil

    timer_thread = Thread.new do
      while user_action == nil
        (1..10).each do |number|
          sleep(1)
          number
          if number == 10
            pet.time_goes_on
          end
          break if (user_action != nil)
        end
      end
    end

    user_action = gets.chomp

    case user_action
    when "play"
      pet.play_fetch
    when "eat"
      pet.feed
    when "train"
      pet.training
    when "sleep"
      pet.sleep
    when "walk"
      pet.take_for_a_walk
    else
      puts "invalid command, try again"
      play(pet)
    end
    timer_thread.join
  end
end

play(dog)
