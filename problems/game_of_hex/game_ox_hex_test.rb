require 'test/unit'

require_relative 'game_of_hex'

class GameOfHexTest < Test::Unit::TestCase
  def test_an_empty_board_has_no_winner
    board = [
        '. . . . .',
        ' . . . . .',
        '  . . . . .',
        '   . . . . .',
        '    . . . . .'
    ]
    game = GameOfHex.new
    assert_equal '', game.winner(board), 'an empty board has no winner'
  end

  def test_only_edges_does_not_make_a_winner
    board = [
        'O O O X',
        ' X . . X',
        '  X . . X',
        '   X O O O'
    ]
    game = GameOfHex.new
    assert_equal '', game.winner(board), 'only edges does not make a winner'
  end

  def test_illegal_diagonal_does_not_make_a_winner
    board = [
        'X O . .',
        ' O X X X',
        '  O X O .',
        '   . O X .',
        '    X X O O'
    ]
    game = GameOfHex.new
    assert_equal '', game.winner(board), 'illegal diagonal does not make a winner'
  end

  def test_nobody_wins_crossing_adjacent_angles
    board = [
        'X . . .',
        ' . X O .',
        '  O . X O',
        '   . O . X',
        '    . . O .'
    ]
    game = GameOfHex.new
    assert_equal '', game.winner(board), 'nobody wins crossing adjacent angles'
  end

  def test_x_wins_crossing_from_left_to_right
    board = [
        '. O . .',
        ' O X X X',
        '  O X O .',
        '   X X O X',
        '    . O X .'
    ]
    game = GameOfHex.new
    assert_equal 'X', game.winner(board), 'X wins crossing from left to right'
  end

  def test_o_wins_crossing_from_top_to_bottom
    board = [
        '. O . .',
        ' O X X X',
        '  O O O .',
        '   X X O X',
        '    . O X .'
    ]
    game = GameOfHex.new
    assert_equal 'O', game.winner(board), 'O wins crossing from top to bottom'
  end

  def test_x_wins_using_a_convoluted_path
    board = [
        '. X X . .',
        ' X . X . X',
        '  . X . X .',
        '   . X X . .',
        '    O O O O O'
    ]
    game = GameOfHex.new
    assert_equal 'X', game.winner(board), 'X wins using a convoluted path'
  end

  def test_x_wins_using_a_spiral_path
    board = [
        'O X X X X X X X X',
        ' O X O O O O O O O',
        '  O X O X X X X X O',
        '   O X O X O O O X O',
        '    O X O X X X O X O',
        '     O X O O O X O X O',
        '      O X X X X X O X O',
        '       O O O O O O O X O',
        '        X X X X X X X X O'
    ]
    game = GameOfHex.new
    assert_equal 'X', game.winner(board), 'X wins using a spiral path'
  end
end