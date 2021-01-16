class Pirate

  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(name, weight, height)
    @name, @weight, @height = name, weight, height
    @@pirates << self
  end

  def self.all
    @@pirates
  end

end