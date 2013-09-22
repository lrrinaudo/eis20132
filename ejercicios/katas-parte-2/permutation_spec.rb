require 'rspec'
require_relative 'permutation.rb'

describe Permutation do 

	describe 'permute' do
		it 'shoud permute ABC' do
			p = Permutation.new("ABC")
			p.permute().should match_array([["A", "B", "C"], ["A", "C", "B"], ["B", "A", "C"], ["B", "C", "A"], ["C", "A", "B"], ["C", "B", "A"]])
		end
	end

end