require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require './lib/reunion'
require 'pry'

class ReunionTest < Minitest::Test

  def test_that_it_exists
    reunion = Reunion.new("1406 BE")

    assert_instance_of Reunion, reunion
  end

  def test_that_it_is_initialized_with_an_empty_array_for_activities
    reunion = Reunion.new("1406 BE")

    assert_equal [], reunion.activities
  end

  def test_that_it_can_add_activities
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Brunch")
    reunion.add_activity(activity_1)

    assert_equal 1, reunion.activities.length
    binding.pry
    assert_instance_of Activity, reunion.activities[0]
  end
end