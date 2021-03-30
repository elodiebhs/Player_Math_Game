class Game

def start
  # player1
  newPlayer1 = Player.new ("Player 1")
  # puts newPlayer1.name
  # player2
  newPlayer2 = Player.new ("Player 2")
  # puts newPlayer2.name

  # we us a cumulator
  cumulator = 1

    while (newPlayer1.lives && newPlayer2.lives) > 0 do
      # initialize a new question
      @question = Question.new
      # show the question
      if cumulator %2 == 0
        puts "Player 2: #{@question.show_question}"
      else 
        puts "Player 1: #{@question.show_question}"
      end

      # player enter an answer
      answer = gets.chomp
      # check answer
      if @question.check_answer(answer) == false
        # check if it's even ---(Player 2 is always even because of our cumulator)
        if cumulator % 2 == 0
          newPlayer2.reduce_life
          puts "player 2 made a mistake"
        else
          newPlayer1.reduce_life
          puts "player 1 made a mistake"
        end

      else
        puts "player answered correclty"
      end


      # new turn puts
      puts "P1 :  #{newPlayer1.lives} / 3 vs P2 :  #{newPlayer2.lives} / 3"


      # we only want New turn to show if score > 0
      if (newPlayer1.lives > 0 ) && (newPlayer2.lives > 0)
      puts "---NEW TURN ---"
      
      elsif cumulator % 2 == 0
      puts "Player 1 win the score of #{newPlayer1.lives} / 3"
      break
      else 
      puts "Player 2 win the score of #{newPlayer2.lives} / 3"
      break
     end


      # cumulator
      cumulator= cumulator + 1

    end

    ##---------- end of while loop----------
   
    

    puts "---GAME OVER ---"
    puts "bye"

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
