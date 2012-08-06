# -*- encoding: UTF-8 -*-

$LOAD_PATH << File.expand_path('./FizzBuzz', File.dirname(__FILE__))

module FizzBuzz
  require 'fizz_buzz'

  class Game
    def initialize(input = $stdin, output = $stdout)
      @input = input
      @output = output
    end
    
    def start
      @output.puts 'welcome FizzBuzz'
      @output.puts 'input number'
      number = @input.gets.to_i
      @output.puts '----------'

      for count in 1..number
        puts count.to_fizz_buzz
      end
    end
  end

end
