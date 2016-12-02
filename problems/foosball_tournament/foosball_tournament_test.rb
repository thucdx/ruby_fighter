require 'test/unit'
require_relative 'foosball_tournament'

class FoosBallTournamentTest < Test::Unit::TestCase

  def test_01
    results = %w(thuc;manh;win manh;son;loss son;trung;draw cong;thuc;win dat;thuc;win dat;manh;win son;tu;win)
    tournament = FoosballTournament.new
    assert_equal [['son', 7], ['dat', 6], ['cong', 3], ['thuc', 3], ['trung', 1], ['manh', 0],
                  ['tu', 0]], tournament.foosball_tournament(results)
  end

  def test_02
    results = %w(thuc;manh;draw thuc;tu;loss tu;manh;loss)
    tournamnet = FoosballTournament.new
    assert_equal [['manh', 4], ['tu', 3], ['thuc', 1]], tournamnet.foosball_tournament(results)
  end

  def test_03
    results = %w(viet;nghia;loss nghia;viet;draw)
    tournament = FoosballTournament.new
    assert_equal [['nghia', 4], ['viet', 1]], tournament.foosball_tournament(results)
  end

  def test_04
    results = [
        'viet;cong;draw'
    ]

    tournament = FoosballTournament.new
    assert_equal [['cong', 1], ['viet', 1]], tournament.foosball_tournament(results)
  end

  def test_05
    results = %w(luyen;son;win duong;khai;loss tung;tra;win thuc;luyen;win manh;tra;draw)
    tournament = FoosballTournament.new
    assert_equal [['khai', 3], ['luyen', 3], ['thuc', 3], ['tung', 3], ['manh', 1], ['tra', 1],
                  ['duong', 0], ["son", 0]], tournament.foosball_tournament(results)

  end
end