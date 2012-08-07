# -*- encoding: UTF-8 -*-

require 'stringio'

$LOAD_PATH << File.dirname(__FILE__)
require 'spec_helper'

module FizzBuzz
  describe Game do
    let(:input) { StringIO.new('1', 'r') }
    let(:output) { StringIO.new }
    let(:game) { Game.new(input, output) }

    describe 'Game#start' do
      context 'with 1' do
        it 'start' do
          game.start
          output.seek(0)
          output.read.should eq "Welcome to FizzBuzz\ninput number\n----------\n1\n"
        end
      end
    end
  end
end
