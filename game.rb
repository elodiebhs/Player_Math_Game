class Game

def start
  # player1
  newPlayer1 = Player.new ("Player 1")
  puts newPlayer1.name
  # player2
  newPlayer2 = Player.new ("Player 2")
  puts newPlayer2.name

    while newPlayer1.lives > 0 do
      # initialize a new question
      @question = Question.new
      # show the question
      puts @question.show_question
      # player enter an answer
      answer = gets.chomp
      # check answer
      puts @question.check_answer(answer)
    end
   
    
end

end


# game has two players 
# When the game start, a question will be ask to player 1
# the player answer the question
# if player 1 answer the question correclty, the game will rotate player
# if player 1 answer the question incorrectly, the game will substract 1 life form player 1 --> if player 1 still has life left, then rotate player --> if player doesn't have life lefte, then player 2 will be the winner
# A question will be ask to player 2
# the player answer the question
# if player 2 answer the question correclty, the game will rotate player
# if player 2 answer the question incorrectly, the game will substract 2 life form player 2 --> if player 2 still has life left, then rotate player --> if player doesn't have life lefte, then player 1 will be the winner
