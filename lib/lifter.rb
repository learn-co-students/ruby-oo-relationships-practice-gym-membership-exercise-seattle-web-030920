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
    Membership.all.select{|mem| mem.lifter==self}
  end

  def gym
    self.membership.map(&:gym).uniq
  end

  def self.average_lift
    self.all.map(&:lift_total).reduce(0, :+)/(self.all.length.to_f)
  end

  def total_cost
    self.membership.map(&:cost).reduce(0, :+)
  end

  def sign_up (gym, membership_cost)
    Membership.new(membership_cost, gym, self)
  end
end