require 'rspec'
require_relative 'tenis.rb'

describe TennisGame do

	describe 'scoreToString' do
		it 'should be Love' do
			tg = TennisGame.new("A", "B")
			tg.scoreToString(0).should eq "Love"
		end
		it 'should be Fifteen' do
			tg = TennisGame.new("A", "B")
			tg.scoreToString(1).should eq "Fifteen"
		end
		it 'should be Thirty' do
			tg = TennisGame.new("A", "B")
			tg.scoreToString(2).should eq "Thirty"
		end
		it 'should be Fourty' do
			tg = TennisGame.new("A", "B")
			tg.scoreToString(3).should eq "Fourty"
		end		
		it 'should be Advantage' do
			tg = TennisGame.new("A", "B")
			tg.scoreToString(4).should eq "Advantage"
		end	
	end

	describe 'playerOneScores' do
		it "should be 1" do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores.should eq 1
		end
	end

	describe 'playerTwoScores' do
		it "should be 1" do
			tg = TennisGame.new("A", "B")
			tg.playerTwoScores.should eq 1
		end
	end	
	
	describe 'matchEnds' do
		it 'shoud be false' do
			tg = TennisGame.new("A", "B")
			tg.matchEnds().should eq false
		end

		it 'shoud be true' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()
			tg.matchEnds().should eq true
		end		
	end


	describe 'getPlayerWithMaxScore' do
		it 'shoud be A' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()
			tg.getPlayerWithMaxScore().should eq "A"
		end
		it 'shoud be B' do
			tg = TennisGame.new("A", "B")
			tg.playerTwoScores()
			tg.getPlayerWithMaxScore().should eq "B"
		end		
	end

	describe 'isDeuce' do
		it 'should be false' do
			tg = TennisGame.new("A", "B")
			tg.isDeuce.should eq false
		end
		it 'should be true' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()

			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.isDeuce.should eq true
		end
	end		

	describe 'hasAdvantage' do
		it 'should be false' do
			tg = TennisGame.new("A", "B")
			tg.hasAdvantage.should eq false
		end
		it 'should be true' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()

			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.hasAdvantage.should eq true
		end
	end

	describe 'getScore' do
		it 'should be Winner A' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()
			tg.getScore().should eq "Winner A"
		end
		it 'should be Winner B' do
			tg = TennisGame.new("A", "B")
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.getScore().should eq "Winner B"
		end

		it 'should be deuce' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()

			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.getScore().should eq "Deuce"
		end
		it 'should be Advantage A' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()

			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.getScore().should eq "Advantage A"
		end
		it 'should be Advantage B' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()
			tg.playerOneScores()
			tg.playerOneScores()

			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.getScore().should eq "Advantage B"
		end
		it 'should be Fifteen, Thirty' do
			tg = TennisGame.new("A", "B")
			tg.playerOneScores()

			tg.playerTwoScores()
			tg.playerTwoScores()
			tg.getScore().should eq "Fifteen, Thirty"
		end
	end

end









