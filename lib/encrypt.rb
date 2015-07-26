require 'date'
class Encrypt
  attr_accessor :input, :output
  attr_reader :message_filename, :encrypted_filename
  def initialize
    self.input = $stdin
    self.output = $stdout
  end

  def filenames
    files = input.read.split(' ')
    @message_filename = files.first
    @encrypted_filename = files.last
  end

  def key
    @key ||= KeyGenerator.generate
  end

  def encrypt
    filenames
    @output = "Created '#{encrypted_filename}' with the key #{key} and the date #{date}"
  end

  private

  def key
    @key ||= KeyGenerator.generate
  end

  def date
    @date ||= Date.today.strftime('%e%m%y')
  end
end
