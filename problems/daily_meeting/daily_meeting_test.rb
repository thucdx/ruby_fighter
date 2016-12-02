require 'test/unit'
require_relative 'daily_meeting'

class DailyMeetingTest < Test::Unit::TestCase

  def test_01
    task_done = 'Create a logout button and implement code handling that'
    will_do = 'Fix bug in login screen that customer reported late evening yesterday'
    difficulties = "don't know how to reproduce that bug as it would not happen on my machine."
    expected = "I did: Create a logout button and implement code handling that; and will do: Fix bug in login screen that customer reported late evening yesterday; my difficulties: don't know how to reproduce that bug as it would not happen on my machine."

    assert_equal expected, DailyMeeting.new.daily_meeting(task_done, will_do, difficulties)
  end

  def test_02
    task_done = 'Create sql schema'
    will_do = '  Data access layer   '
    difficulties = 'nothing'
    expected = 'I did: Create sql schema; and will do:   Data access layer   ; my difficulties: nothing'

    assert_equal expected, DailyMeeting.new.daily_meeting(task_done, will_do, difficulties)
  end

  def test_03
    task_done = ' a '
    will_do = 'b'
    difficulties = 'c'
    expected = 'I did:  a ; and will do: b; my difficulties: c'

    assert_equal expected, DailyMeeting.new.daily_meeting(task_done, will_do, difficulties)
  end
end