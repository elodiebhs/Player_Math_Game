# Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

ROLES

1.player
- Who's players is playing?

2.game
- The game loop


3.question
- A new math question is generated for each turn by picking two numbers between 1 and 20



METHODS AND STATES

Player: 
  State : name of the player, score of the player(lifes)
  Behavour: switch from a player to the other player, method to decrement a life when answered incorrect

Game:
 State : template of the game, looping depending on the player in the state

 Behavour:
 - contain tge user I/0
 - include amethod that access the math question method in question Class for the player answer
 - include a method to change player turn or change round
 - include a method for when a player has no life the other player win
 - method to asses players answer

  Starts game, makes players, keeps track of current player, gets question and evaluates answers then updates player appropriately, keeps track of when to end the game

Question: 
  State: store question answer
  
  Behavour: method to generate random question between 1-2, method that ask the player the math question