class Lifter
  attr_reader :name, :lift_total
  @@all=[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all<<self
  end

  def self.all
    @@all
  end

  def membership
    Get a list of all the memberships that a specific lifter has
  end

  def gym
    Get a list of all the gyms that a specific lifter has memberships to
  end

  def self.average_lift
    Get the average lift total of all lifters
  end

  def total_cost
    Get the total cost of a specific lifters gym memberships
  end

  def sign_up (gym, membership_cost)
    sign a specific lifter up for a new gym
  end
end