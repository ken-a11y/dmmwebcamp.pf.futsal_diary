class Diary < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :diary_comments, dependent: :destroy
  has_many :diary_favorites, dependent: :destroy
  has_many :tactics_tags, dependent: :destroy
  has_many :tags, through: :tactics_tags
end
