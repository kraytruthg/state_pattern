require "./spirit"

class Dying < Spirit
  def tickets_attack(atk)
    atk * 1.5
  end

  def take_break
    hp
  end
end
