require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new()
    @results = [
      'Draw!',
      'Player 1 wins by playing rock!',
      'Player 2 wins by playing paper!',
      'Player 1 wins by playing paper!',
      'Player 2 wins by playing scissors!',
      'Player 2 wins by playing rock!',
      'Player 1 wins by playing scissors!'
    ]
  end

  def test_play
    assert_equal(@results[0], @game.play('rock', 'rock'))
    assert_equal(@results[0], @game.play('paper', 'paper'))
    assert_equal(@results[0], @game.play('scissors', 'scissors'))
    assert_equal(@results[1], @game.play('rock', 'scissors'))
    assert_equal(@results[2], @game.play('rock', 'paper'))
    assert_equal(@results[3], @game.play('paper', 'rock'))
    assert_equal(@results[4], @game.play('paper', 'scissors'))
    assert_equal(@results[5], @game.play('scissors', 'rock'))
    assert_equal(@results[6], @game.play('scissors', 'paper'))
  end


end
