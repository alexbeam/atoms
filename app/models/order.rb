class Order < ActiveRecord::Base
  belongs_to :atoms
  def new
  end
end
