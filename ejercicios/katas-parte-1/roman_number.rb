class RomanNumber

	def initialize(n)
		@number = n
	end

	def value()
		return @number
	end

	def add(n)
		if(@number == "I" && n == "I")
			return "II"
		elsif(@number == "II" && n == "I")
			return "III"
		else
			return "Error: Suma no contemplada"
		end
	end

end