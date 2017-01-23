require "./spirit"

class Warning < Spirit
  def tickets_attack(atk)
    atk
  end

  def take_break
    40
  end
end
