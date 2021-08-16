class Question
  def initialize
    @number1 = rand(1...20)
    @number2 = rand(2...20)
    @answer = 0
    @gameType = rand(1...4)
  end

  def newQuestion
    @number1 = rand(1...20)
    @number2 = rand(2...20)
    @answer = 0
    @gameType = rand(1...4)
  end

  def generateQuestion
    operator = ''
    if @gameType == 1 
      operator = 'plus'
    elsif @gameType == 2
      operator = 'minus'
    elsif @gameType == 3
      operator = 'multiply'
    elsif @gameType == 4
      operator = 'divided by'
    
    end
    "What does #{@number1} #{operator} #{@number2} rounded down to the nearest integer equal?"
  end

  def answer
    if @gameType == 1 
      return @number1 + @number2
    elsif @gameType == 2
      return @number1 - @number2
    elsif @gameType == 3
      return @number1 * @number2
    elsif @gameType == 4
      return @number1 / @number2
    end
  end

  def inputCompare
    userAnswer = gets.chomp
    if userAnswer.to_i == self.answer.to_i
      return true
    else
      return false
    end
  end

end


