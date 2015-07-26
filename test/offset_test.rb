require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'
class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new(13463, 260715)
  end

  def test_it_is_intialized_with_a_key_and_date
    setup
    assert_equal '13463', @offset.key
    assert_equal '1225', @offset.date
  end

  def test_the_a_key_rotation_is_correct
    setup
    assert_equal 13, @offset.a_key_rotation
  end

  def test_the_b_key_rotation_is_correct
    setup
    assert_equal 34, @offset.b_key_rotation
  end

  def test_the_c_key_rotation_is_correct
    setup
    assert_equal 46, @offset.c_key_rotation
  end

  def test_the_d_key_rotation_is_correct
    setup
    assert_equal 63, @offset.d_key_rotation
  end

  def test_the_total_a_rotation
    setup
    assert_equal 13 + 1, @offset.a_rotation
  end

end
