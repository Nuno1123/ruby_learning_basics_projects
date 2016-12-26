class Orange_Tree

  def initialize height, age
    @height = height                # centimeters
    @age = age                      # years
    @age_of_death = 200
    @orange_count = 0
    @picked_oranges = 0
    @alive = true
  end

  def height_value
    puts @height.to_s
  end

  def anual_orange_count
    return @orange_count
  end

  def produce_oranges
    @orange_count = (0.7 * (10 * @age)).to_i
    puts 'In the year ' + @age.to_s + ' there were produced ' + @orange_count.to_s + ' oranges'
    anual_orange_count
  end

  def is_alive
    return @alive
  end

  def pick_orange
    if @orange_count > 0
      @orange_count -= 1
      @picked_oranges += 1

      puts 'What a delicious orange. Picked oranges total is ' + @picked_oranges.to_s
    else
      puts 'There are no more oranges in the tree'
    end
    anual_orange_count
  end

  def one_year_passes
    @age += 1
    @height += 30

    puts 'One year have passed. The tree has now ' + @age.to_s + ' years old'

    height_value

    if @orange_count > 0
      puts @orange_count.to_s + ' oranges fell over from the tree. What a waste'
      @orange_count = 0
      @picked_oranges = 0
    end

    if @age > 2
      produce_oranges
      (@orange_count*0.7).to_i.times do
        pick_orange
      end
    elsif @age == @age_of_death
      @alive = false
      puts 'The orange tree has died'
      exit
    end
  end
end

orange_tree = Orange_Tree.new 170, 0

def plant tree
  while tree.is_alive
    (1..10).each do |number|
      sleep(1)
      number

      if number == 10
        tree.one_year_passes
      end
    end
  end
end

plant orange_tree
