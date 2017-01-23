require "./super"
require "./normal"
require "./warning"
require "./dying"
require "./game_over"

class Employee
  attr_reader :state, :hp, :spirit

  def initialize(state: state)
    @state = state
    @hp    = init_hp
    @spirit = update_spirit
  end

  def tickets_attack(atk)
    @hp -= spirit.tickets_attack(atk)
    update_state!
  end

  def take_break
    @hp += spirit.take_break
    update_state!
  end

  private

  def update_state!
    @state = if hp > 100
               :super
             elsif hp.between?(61, 100)
               :normal
             elsif hp.between?(31, 60)
               :warning
             elsif hp.between?(1, 30)
               :dying
             elsif hp <= 0
               :game_over
             end

    update_spirit
    @state
  end

  def update_spirit
    klass = state == :game_over ? "GameOver" : state.to_s.capitalize
    @spirit = Kernel.const_get(klass).new(hp)
  end

  def init_hp
    if state == :super
      120
    elsif state == :normal
      100
    elsif state == :warning
      60
    elsif state == :dying
      30
    elsif state == :game_over
      0
    end
  end
end
