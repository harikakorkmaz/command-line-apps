class Brave

  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(monster)
    puts "#{@name}の攻撃"

    damage = @offense - monster.defense
    # monster.hp = monster.hp - damage
    monster.hp -= damage

    puts "#{monster.name}は#{damage}のダメージを受けた"
    puts "#{monster.name}の残りHPは#{monster.hp}だ"
  end
end

class Monster
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end

brave = Brave.new(name:"Harika", hp:500, offense:150, defense:100)

monster = Monster.new(name:"スライム",hp: 250, offense: 200, defense: 100)

brave.attack(monster)

# puts <<~TEXT
# NAME:#{brave.name}
# HP:#{brave.hp}
# OFFENSE:#{brave.offense}
# DEFENSE:#{brave.defense}
# TEXT
#
# brave.hp -= 30
#
# puts "#{brave.name}はダメージを受けた！残りHPは#{brave.hp}だ"
