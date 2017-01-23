require "./spirit"

class Super < Spirit
  def tickets_attack(atk)
    atk * 0.6
  end

  def take_break
    -10
  end
end
