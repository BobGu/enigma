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



  def encrypt
    filenames
  end
end
