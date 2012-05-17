class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  # adding a data validation
  validates :content, :length => { :maximum => 140 }
  belongs_to :user
end
