# -*- encoding: utf-8 -*-

$LOAD_PATH << File.expand_path(File.join('..', 'lib'), File.dirname(__FILE__))
$LOAD_PATH << File.expand_path(File.join('..', 'lib\FizzBuzz'), File.dirname(__FILE__))

require 'simplecov'
SimpleCov.start do
  #add_filter "/spec/"
end
