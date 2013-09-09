require 'rspec'
require_relative './roman_number'

describe RomanNumber do

  describe 'initialize' do

    it 'should set value' do
      rn = RomanNumber.new('I')
      rn.value.should eq 'I'
    end

  end

  describe 'sum' do
    it 'should return II when adding I and I' do
      i = RomanNumber.new('I')
      result = i.add("I")
      result.should eq "II"
    end

    it 'should return III when adding II and I' do
      i = RomanNumber.new('II')
      result = i.add("I")
      result.should eq "III"
    end    

  end
    
end
