class KeyGenerator
  def self.generate
    Random.new.rand(10000..99999)
  end
end
