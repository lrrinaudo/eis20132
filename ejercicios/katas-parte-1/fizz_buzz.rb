require 'rspec'
class FizzBuzz

	def checkMul(i)
		if (i % 3 == 0 && i % 5 == 0)
			return "FizzBuzz?"
		elsif(i % 3 == 0)
			return "Fizz"
		elsif (i % 5 == 0)
			return "Buzz"
		else
			return i
		end
	end

	def fizzBuzz()
		for i in 1..100
			puts checkMul(i)
		end
	end

end

#fb = FizzBuzz.new
#fb.fizzBuzz