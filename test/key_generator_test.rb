require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require './lib/key_generator'


class KeyGeneratorTest < Minitest::Test
  def test_it_can_generate_a_random_key
    assert KeyGenerator.generate.to_s.match(/[0-9]{5}/)
  end
end
