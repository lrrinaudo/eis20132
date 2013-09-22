class Permutation

	def initialize(word)
		@word = word
	end

	def permute()
		pword = @word.chars.to_a.permutation.to_a
		pword.each do |p|
		   puts p.join
		end
	end
end
