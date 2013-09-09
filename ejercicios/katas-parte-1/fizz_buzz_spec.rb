require 'rspec'
require_relative './fizz_buzz.rb'

describe FizzBuzz do
	describe 'checkMul' do
	    it 'should be Buzz' do
	      fizzBuzz = FizzBuzz.new
	      fizzBuzz.checkMul(5).should eq "Buzz"
	    end

		it 'should be Fizz' do
	      fizzBuzz = FizzBuzz.new
	      fizzBuzz.checkMul(3).should eq "Fizz"
	    end

		it 'should be FizzBuzz?' do
	      fizzBuzz = FizzBuzz.new
	      fizzBuzz.checkMul(15).should eq "FizzBuzz?"
	    end

		it 'should be the number in the parameter' do
	      fizzBuzz = FizzBuzz.new
	      fizzBuzz.checkMul(1).should eq 1
	    end
	end
end