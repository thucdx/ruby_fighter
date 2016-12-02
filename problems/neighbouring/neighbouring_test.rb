require 'test/unit'
require_relative 'neighbouring'

class NeighbouringTest < Test::Unit::TestCase
  def test_01
    string1 = 'abbca'
    string2 = 'acbcc'
    expected = 4

    assert_equal expected, Neighbouring.new.neighbouring(string1, string2)
  end

  def test_02
    string1 = 'abac'
    string2 = 'abcs'
    expected = 2

    assert_equal expected, Neighbouring.new.neighbouring(string1, string2)
  end

  def test_03
    string1 = 'aaass'
    string2 = 'sssaa'
    expected = 2

    assert_equal expected, Neighbouring.new.neighbouring(string1, string2)
  end

  def test_04
    string1 = 'abc'
    string2 = 'abc'
    expected = 0

    assert_equal expected, Neighbouring.new.neighbouring(string1, string2)
  end

  def test_05
    string1 = 'a'
    string2 = 'c'
    expected = 2

    assert_equal expected, Neighbouring.new.neighbouring(string1, string2)
  end

  def test_06
    string1 = 'iwanttosayathing'
    string2 = 'thingiwanttosay'
    expected = 1

    assert_equal expected, Neighbouring.new.neighbouring(string1, string2)
  end


end