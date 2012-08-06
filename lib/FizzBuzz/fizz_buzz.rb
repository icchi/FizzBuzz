# -*- encoding: UTF-8 -*-

class Integer
  def to_fizz_buzz
    word = ''
    if (self % 3 == 0)
      word << 'Fizz'
    end
    if (self % 5 == 0)
     word << 'Buzz'
    end
    word.empty? ? self.to_s : word
  end
end