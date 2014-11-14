class Tag < ActiveRecord::Base
  has_many :taggables
  has_many :posts, through: :taggables
end
