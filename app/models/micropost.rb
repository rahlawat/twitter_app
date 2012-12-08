class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, presence: true,length: {minimum: 1,maximum: 40}
  validate :user_id,presence: true
end
