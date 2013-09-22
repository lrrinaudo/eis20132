class TennisGame

	def initialize(playerOneName, playerTwoName)
		@playerOneName = playerOneName
		@playerTwoName = playerTwoName
		@playerOneScore = 0
		@playerTwoScore = 0
	end

	def getPlayerOneScore()
		return @playerOneScore
	end

	def getPlayerTwoScore()
		return @playerTwoScore
	end

	def playerOneScores()
		@playerOneScore = @playerOneScore + 1
	end

	def playerTwoScores()
		@playerTwoScore = @playerTwoScore + 1
	end	

	def scoreToString(score)
		if(score == 0)
			return "Love"
		elsif(score == 1)
			return "Fifteen"
		elsif(score == 2)
			return "Thirty"
		elsif(score == 3)
			return "Fourty"
		elsif(score == 4)
			return "Advantage"
		end
	end

	def matchEnds()
		return ( (@playerOneScore >= 4 && (@playerOneScore >= @playerTwoScore + 2)) ||
				(@playerTwoScore >= 4 && (@playerTwoScore >= @playerOneScore + 2)) )
	end

	def getPlayerWithMaxScore()
		if(@playerOneScore > @playerTwoScore)
			return @playerOneName
		else
			return @playerTwoName
		end
	end

	def isDeuce()
		return (@playerOneScore == 3 && @playerTwoScore == 3)
	end

	def hasAdvantage()
		return ((@playerOneScore >= 4 && (@playerOneScore == @playerTwoScore + 1)) ||
				(@playerTwoScore >= 4 && (@playerTwoScore == @playerOneScore + 1)) )
	end 

	def getScore()
		if(self.matchEnds())
			return "Winner " + self.getPlayerWithMaxScore()
		elsif(self.isDeuce())
			return "Deuce"
		elsif(self.hasAdvantage())
			return "Advantage " + self.getPlayerWithMaxScore()
		else
			return self.scoreToString(@playerOneScore) + ", " + self.scoreToString(@playerTwoScore)
		end 
	end

end
