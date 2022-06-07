class Tag < ApplicationRecord
  has_many :tactic_tags, dependent: :destroy, foreign_key: 'tag_id'
  has_many :diaries, through: :tactic_tags
end