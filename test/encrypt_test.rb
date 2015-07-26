require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require './lib/key_generator'

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

  def test_key_is_five_digits_long
    setup
    @encrypt.encrypt
    assert @encrypt.output.match(/[0-9]{5}/)
  end

  def test_it_can_return_todays_date_in_DDMMYY_format
    setup
    @encrypt.encrypt
    assert @encrypt.output.match(/[0-3]{1}\d{1}[0-1]{1}[0-9]{1}[0-9]{2}/)
  end

  def test_it


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
