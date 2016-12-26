# verse with center and a for loop to iterate through the array of verses
line_width = 100

verses = []

verses.push "Now if I loved you, would you love me back?"
verses.push "Would you confessed that I was the best that you ever had"
verses.push "Would you allowed me to hold you, show you exotic lands?"
verses.push "Well, there's need to look further, you've got you man"

verses.length.times do |i|
  puts(verses[i].to_s.center(line_width))
end

sentence = ''
counter = 0

3.times do
  puts sentence
end

# deaf grammas challenge...
puts 'gramma challenge 1. Say something to gramma'
puts sentence


while (sentence != 'BYE' or counter != 3)
  sentence = gets.chomp
  if sentence != 'BYE'
    counter = 0
    if sentence == sentence.upcase
      puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end
  elsif sentence == 'BYE'
    counter = counter + 1
  end
end

puts "Congrats, gramma's asleep now"
