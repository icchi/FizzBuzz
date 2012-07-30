# -*- encoding: UTF-8 -*-

$LOAD_PATH << File.dirname(__FILE__)
require 'fizz_buzz'

puts 'input number'
number = STDIN.gets.to_i
puts '----------'

for count in 1..number
  puts count.to_fizz_buzz
end