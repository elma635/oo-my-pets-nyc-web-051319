require_relative '../lib/owner.rb'

class Fish
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def buy_dog
    self
  end



end
