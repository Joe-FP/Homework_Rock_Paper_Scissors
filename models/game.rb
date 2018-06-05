class Game

  def initialize()
  end

  def play(player1, player2)
    return 'Draw!' if player1 == player2
    case player1
    when 'rock'
      return 'Player 1 wins by playing rock!' if player2 == 'scissors'
      return 'Player 2 wins by playing paper!' if player2 == 'paper'
    when 'paper'
      return 'Player 1 wins by playing paper!' if player2 == 'rock'
      return 'Player 2 wins by playing scissors!' if player2 == 'scissors'
    when 'scissors'
      return 'Player 2 wins by playing rock!' if player2 == 'rock'
      return 'Player 1 wins by playing scissors!' if player2 == 'paper'
    end
  end
end
