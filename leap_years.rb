initial_year = gets.chomp.to_i
final_year = gets.chomp.to_i
years_difference = final_year - initial_year

puts 'The leap years between ' + initial_year.to_s + ' and ' + final_year.to_s + ' are:'

if ((initial_year % 4 == 0 and initial_year % 100 != 0) or initial_year % 400 == 0)
  puts initial_year
end

(years_difference).times do
  initial_year = initial_year + 1

  if ((initial_year % 4 == 0 and initial_year % 100 != 0) or initial_year % 400 == 0)
    puts initial_year
  end
end
