class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :length=>{:maximum => 20}
  validates :user_id, :length=>{:minimum => 1}
  
  belongs_to :user
end
