class Spirit
  attr_reader :hp

  def initialize(hp)
    @hp = hp
  end

  def tickets_attack(hp)
    raise NotImplementedError
  end

  def take_break(hp)
    raise NotImplementedError
  end
end
