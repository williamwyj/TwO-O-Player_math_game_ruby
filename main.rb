require "./player.rb"
require "./question.rb"

player1 = Player.new('Player1', 'P1')
player2 = Player.new('Player2', 'P2')
question = Question.new
turnCounter = 1

while player1.currentLife > 0 && player2.currentLife > 0 do

  currentPlayer = ''
  winner = ''
  loser = ''

  question.newQuestion

  if turnCounter % 2 == 1
    currentPlayer = player1
  else
    currentPlayer = player2
  end

  puts "#{currentPlayer.name}: #{question.generateQuestion}"
  result = question.inputCompare

  if result == true
    puts 'YES! You are correct.'
  elsif result == false
    currentPlayer.currentLife -= 1
    puts 'Seriously? No!'
  end

  puts "#{player1.shortName}: #{player1.currentLife}/#{player1.life} vs #{player2.shortName}: #{player2.currentLife}/#{player2.life}"

  if player1.currentLife == 0
    winner = player2
    loser = player1
  elsif player2.currentLife == 0
    winner = player1
    loser = player2
  end
  
  if player1.currentLife > 0 && player2.currentLife > 0
    puts '----- New Turn -----'
  else
    puts "#{winner.name} wins with a score of #{winner.currentLife}/#{loser.currentLife}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  turnCounter+=1
end


