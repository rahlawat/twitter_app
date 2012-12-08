class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
   validate :user_id,presence: true
  belongs_to :user

  validates :content, :length => { :maximum => 140 }
end
