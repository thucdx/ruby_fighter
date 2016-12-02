require 'test/unit'

require_relative 'shy_colleague'

class ShyColleagueTest < Test::Unit::TestCase
  def test_01
    plaintext = 'would you like to come with me tonight'
    shift = 10
    cipher = 'mekbt oek byau je secu myjx cu jedywxj'

    assert_equal cipher, ShyColleague.new.shy_colleage(plaintext, shift)
  end

  def test_02
    plaintext = 'abcdefghijklmnopqrstuvwxyz'
    shift = 3
    cipher = 'xyzabcdefghijklmnopqrstuvw'

    assert_equal cipher, ShyColleague.new.shy_colleage(plaintext, shift)
  end

  def test_03
    plaintext = 'd'
    shift = 3
    cipher = 'a'

    assert_equal cipher, ShyColleague.new.shy_colleage(plaintext, shift)
  end

  def test_04
    plaintext = 'z'
    shift = 25
    cipher = 'a'

    assert_equal cipher, ShyColleague.new.shy_colleage(plaintext, shift)
  end

  def test_05
    plaintext = 'ruby fighter is awesome! and so you are!'
    shift = 1
    cipher = 'qtax ehfgsdq hr zvdrnld! zmc rn xnt zqd!'

    assert_equal cipher, ShyColleague.new.shy_colleage(plaintext, shift)
  end

  def test_06
    plaintext = 'Khy love Thy'
    shift = 13
    cipher = 'Kul ybir Tul'

    assert_equal cipher, ShyColleague.new.shy_colleage(plaintext, shift)
  end

  def test_07
    plaintext = '#'
    shift = 1
    cipher = '#'

    assert_equal cipher, ShyColleague.new.shy_colleage(plaintext, shift)
  end
end