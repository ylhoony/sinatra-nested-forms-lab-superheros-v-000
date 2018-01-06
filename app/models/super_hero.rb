class SuperHero
  attr_accessor :name, :power, :bio

  @@super_heroes = []

  def initialize
    self.save
  end

  def self.all
    @@super_heroes
  end

  def save
    @@super_heroes << self
  end

end
