current_time = Time.new

birth_time = Time.mktime(1986, 8, 2, 7, 0, 23)

def seconds_old (date, birth)
  puts 'Today it is:'
  puts date
  puts 'You were born in:'
  puts birth
  puts 'You are:'
  return (date - birth).floor.to_s + ' seconds old'
end

def one_million_seconds_old birth_date
  puts 'You have completed 1 million seconds old in:'
  return birth_date + 1000000
end

puts seconds_old(current_time, birth_time)
puts ''
puts one_million_seconds_old(birth_time)

# finding out how old the person is, and spanking her for the same amount of times
def age seconds
  return seconds.to_i / 365 / 24 / 60 / 60
end

puts ''
years_old = age(seconds_old(current_time, birth_time))
puts years_old

def spanking years
  years.to_i.times do
    puts 'SPANK'
  end
end

spanking(years_old)
