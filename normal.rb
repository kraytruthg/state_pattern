require "./spirit"

class Normal < Spirit
  def tickets_attack(atk)
    atk * 0.8
  end

  def take_break
    10
  end
end
