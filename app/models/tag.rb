class Tag < ActiveRecord::Base
  has_many :taggables
  has_many :posts, through: :taggables

  def self.counts
    self.select("name, count(taggables.tag_id) as count").joins(:taggables).group("taggables.tag_id")
  end
end
