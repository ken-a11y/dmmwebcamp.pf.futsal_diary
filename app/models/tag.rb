class Tag < ApplicationRecord
  has_many :tactic_tags, dependent: :destroy, foreign_key: 'tag_id'
  has_many :diaries, through: :tactic_tags
  
  scope :merge_books, -> (tags){ }

  def self.looks(search, word)
    if search == "perfect_match"
      tags = Tag.where("tag_name LIKE?","#{word}")
    elsif search == "forward_match"
      tags = Tag.where("tag_name LIKE?","#{word}%")
    elsif search == "backward_match"
      tags = Tag.where("tag_name LIKE?","%#{word}")
    elsif search == "partial_match"
      tags = Tag.where("tag_name LIKE?","%#{word}%")
    else
      tags = Tag.all
    end
    tags.inject(init = []) {|result, tag| result + tag.diaries}
  end
end