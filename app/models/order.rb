class Order < ActiveRecord::Base
  attr_accessible :sandwich_id, :user_id

  validates :sandwich_id, :presence => true
  validates :user_id, :presence => true
  
  belongs_to :user
  belongs_to :sandwich
end
