class Ship
  
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(name, type, booty)
    @name, @type, @booty = name, type, booty
    @@ships << self
  end

  def self.all 
    @@ships
  end

  def self.clear
    all.clear
  end
  
end