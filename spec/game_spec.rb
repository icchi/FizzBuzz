# -*- encoding: UTF-8 -*-
require 'stringio'
require 'spec_helper'

module FizzBuzz
  describe Game do
    let(:output) { StringIO.new }

    describe '開始' do
      context '入力値は1' do

        subject do
          input = double('input')
          input.stub(:gets).and_return('1')
          Game.new(input, output) 
        end

        before(:each) do
          subject.start
          output.seek(0)
        end

        it 'ゲーム開始のメッセージが表示される' do
          output.read.split("\n")[0].should eq 'Welcome to FizzBuzz'
        end

        it '入力を促すメッセージが表示される' do
          output.read.split("\n")[1].should eq 'input number'
        end

        it '区切り文字が表示される' do
          output.read.split("\n")[2].should eq '----------'
        end

        it '結果が表示される' do
          output.read.split("\n")[3].should eq '1'
        end
      end
    end
  end
end
