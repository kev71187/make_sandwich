class Order < ActiveRecord::Base
  attr_accessible :user_id, :cost, :contents_attributes, :contents

  belongs_to :user
  has_many :contents
  has_many :ingredients, :through => :contents 

  accepts_nested_attributes_for :contents, :reject_if => lambda {|a| a[:ingredient_id].blank?} , :allow_destroy => true
end
