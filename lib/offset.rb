class Offset
  attr_accessor :key, :date
  def initialize(key, date)
    @key = key.to_s
    @date = (date * date).to_s[-4..-1]
  end

  def a_key_rotation
    @key[0..1].to_i
  end

  def b_key_rotation
    @key[1..2].to_i
  end

  def c_key_rotation
    @key[2..3].to_i
  end

  def d_key_rotation
    @key[3..4].to_i
  end

  def a_rotation
    @date[0].to_i + a_key_rotation
  end

  def b_rotation
    @date[1].to_i + b_key_rotation
  end

  def c_rotation
    @date[2].to_i + c_key_rotation
  end

  def d_roation
    @date[3].to_i + d_key_rotation
  end
end
