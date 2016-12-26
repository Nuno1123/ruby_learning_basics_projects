word_list = []
interm_list = []
alpha_list = []

puts 'To add items to the list, write a word and press enter untill the list is completed. Then, don\'t write anything and press enter to submit the list'
user_input = 'some_word'

while user_input != ''
  user_input = gets.chomp.capitalize
  word_list.push user_input
end

puts 'This is you list, alphabetically oredered'
puts word_list.sort
