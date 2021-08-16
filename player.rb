class Player
  attr_accessor :life, :name, :currentLife, :shortName
  def initialize(name, shortName)
    @life = 3
    @currentLife = 3
    @name = name
    @shortName = shortName
  end

end