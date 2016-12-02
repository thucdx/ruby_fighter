require 'test/unit'
require_relative 'bracket_match'

class BracketMatchTest < Test::Unit::TestCase
  def test_01
    code = '}{'
    expected = false

    assert_equal expected, BracketMatch.new.bracket_match(code)
  end

  def test_02
    code = '{ }'
    expected = true

    assert_equal expected, BracketMatch.new.bracket_match(code)
  end

  def test_03
    code = '(((185 + 223.85) * 15) - 543)/2'
    expected = true

    assert_equal expected, BracketMatch.new.bracket_match(code)
  end

  def test_07
    code = '<[{()( hello )}    x []]{}>'
    expected = true

    assert_equal expected, BracketMatch.new.bracket_match(code)
  end

  def test_04
    code ='[['
    expected = false

    assert_equal expected, BracketMatch.new.bracket_match(code)
  end

  def test_05
    code = "\left(\begin{array}{cc} \frac{1}{3} & x\\ \mathrm{e}^{x} &... x^2 \end{array}\right)"
    expected = true
    assert_equal expected, BracketMatch.new.bracket_match(code)
  end

  def test_06
    code = '<{[]}>()(())[]{}'
    expected = true
    assert_equal expected, BracketMatch.new.bracket_match(code)
  end

  def test_08
    code = '<{[]}>()(())[]{}<'
    expected = false
    assert_equal expected, BracketMatch.new.bracket_match(code)
  end
end