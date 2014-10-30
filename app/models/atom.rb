class Atom < ActiveRecord::Base
  has_many :orders
    
  def unique
    decimals = self.weight.to_s.split(".")[1].length
    moe = ((self.moe)*10**(-decimals)).to_f
    range_1 = self.weight.to_f + moe.to_f
    range_2 = self.weight.to_f - moe.to_f
    Random.rand(range_2..range_1).round(11)
  end
end
