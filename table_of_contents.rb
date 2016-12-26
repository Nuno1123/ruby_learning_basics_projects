table_of_contents = ['Intro', '1', 'Nuno Monteiro',
                    'Making it rain!', '2', 'Nuno Montizy',
                    'Auf Auf', '9', 'Yoshima Maria']

line_width = 100
table_titles = ['Chapter Names', 'Pages Numbers', 'Authors']

puts 'Table of contents'.center(line_width)
puts ''
puts (table_titles[0].ljust(line_width/3) + table_titles[1].center(line_width/3) + table_titles[2].rjust(line_width/3))

i = 0
array_length = table_of_contents.length

puts ''

while i != array_length
  if i <= 2
    puts (table_of_contents[i].ljust(line_width/table_titles.length) +
    table_of_contents[i += 1].center(line_width/table_titles.length) +
    table_of_contents[i += 1].rjust(line_width/table_titles.length))

  elsif (i > 2 && i <= 5)
    puts (table_of_contents[i].ljust(line_width/table_titles.length) +
    table_of_contents[i += 1].center(line_width/table_titles.length) +
    table_of_contents[i += 1].rjust(line_width/table_titles.length))

  else
    puts (table_of_contents[i].ljust(line_width/table_titles.length) +
    table_of_contents[i += 1].center(line_width/table_titles.length) +
    table_of_contents[i += 1].rjust(line_width/table_titles.length))
  end
  i += 1
end
