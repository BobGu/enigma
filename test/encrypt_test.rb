require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test
  def setup
    @encrypt = Encrypt.new
    @input = StringIO.new('message.txt encrypted.txt')
    @output = StringIO.new
    @encrypt.input = @input
    @encrypt.output = @output
  end

  def test_correct_filenames_from_input
    setup
    @encrypt.encrypt
    assert_equal 'encrypted.txt', @encrypt.encrypted_filename
  end

  def test_output_contains_a_five_digit_key
    setup
    @encrypt.encrypt
    assert @encrypt.match(/[0-5]{5}/)
  end

  # def test_it_can_open_and_save_a_new_file
  #   encrypt = Encrypt.new('message.txt', 'encrypted.txt')
  #   encrypt.encrypt
  #   assert File.exist?('encrypted.txt')
  # end
  #
  # def test_it_can_output_a_five_digit_key
  #   encrypt = Encrypt.new('message.txt', 'encrypted.txt')
  #   encrypt.encrypt
  #   binding.pry
  #   assert_output(/[0-9]{5}/) {encrypt.output}
  # end
end
