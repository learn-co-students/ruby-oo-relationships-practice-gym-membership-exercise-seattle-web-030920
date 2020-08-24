class Gym
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end

  def membership
    Membership.all.select{|mem| mem.gym==self}
  end

  def lifters
    self.membership.map(&:lifter).uniq
  end

  def lifters_name
    self.lifters.map(&:name)
  end

  def combined_lift
    self.lifters.map(&:lift_total).reduce(0, :+)
  end
end







