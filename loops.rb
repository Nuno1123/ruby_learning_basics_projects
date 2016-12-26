# the idea was to get rid of the first blank line because the 'puts command' was before the  'gets.chomp'

command = ''

while command != 'bye'
  command = gets.chomp
  if command != 'bye'
    puts command
  end
end

puts 'Come again soon!'
