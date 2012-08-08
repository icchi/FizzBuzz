# -*- encoding: UTF-8 -*-
require 'spec_helper'

describe Integer do

  context '3の倍数、5の倍数でもない' do
    it 'return num' do
      1.to_fizz_buzz.should eq '1'
      2.to_fizz_buzz.should eq '2'
      4.to_fizz_buzz.should eq '4'
      7.to_fizz_buzz.should eq '7'
    end
  end

  context '3の倍数のみ' do
    it 'return Fizz' do
      3.to_fizz_buzz.should  eq 'Fizz'
      6.to_fizz_buzz.should  eq 'Fizz'
      9.to_fizz_buzz.should  eq 'Fizz'
      12.to_fizz_buzz.should eq 'Fizz'
    end
  end

  context '5の倍数のみ' do
    it 'return Buzz' do
      5.to_fizz_buzz.should  eq 'Buzz'
      10.to_fizz_buzz.should eq 'Buzz'
      20.to_fizz_buzz.should eq 'Buzz'
      25.to_fizz_buzz.should eq 'Buzz'
    end
  end

  context '15の倍数のみ(3と5の倍数)' do
    it 'return FizzBuzz' do
      15.to_fizz_buzz.should eq 'FizzBuzz'
      30.to_fizz_buzz.should eq 'FizzBuzz'
      45.to_fizz_buzz.should eq 'FizzBuzz'
      60.to_fizz_buzz.should eq 'FizzBuzz'
    end
  end

end
