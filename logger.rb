def log block_description, &block
  puts 'Begining... ' + block_description + '...'

  value_returned = block.call

  puts '... ' + block_description + ' finished. Returning:'
  puts value_returned
end

log "outter block" do

  log 'inside block' do
    '5'
  end

  log 'yet another block' do

    'This shit is fucking crazy!!'
  end

  false
end


# second option
puts ''
puts 'with idention:'
puts ''

$indention_level = 0
$space = '   '

def log block_description, &block
  puts $space*$indention_level + 'Begining... ' + block_description + '...'

  $indention_level += 1
  value_returned = block.call
  $indention_level -= 1

  puts $space*$indention_level + '... ' + block_description + ' finished. Returning:'
  puts $space*$indention_level + value_returned.to_s
end

log "outter block" do

  log 'inside block' do

    log 'tiny_block' do
      'tiny block'
    end

    '5'
  end

  log 'yet another block' do

    'This shit is fucking crazy!!'
  end

  false
end
