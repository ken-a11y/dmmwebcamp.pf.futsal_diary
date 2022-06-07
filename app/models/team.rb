class Team < ApplicationRecord
  has_one_attached :team_image
  belongs_to :owner, class_name: 'User'
  has_many :team_users, dependent: :destroy
  has_many :users, through: :team_users, source: :user
end