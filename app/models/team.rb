class Team < ApplicationRecord
  has_one_attached :team_image
  belongs_to :owner, class_name: 'User'
  has_many :team_users, dependent: :destroy
  has_many :users, through: :team_users, source: :user
  
  def get_team_image
    unless team_image.attached?
      file_path = Rails.root.join('app/assets/images/no_img.jpg')
      team_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    team_image.variant(resize_to_limit: [100, 100]).processed
  end
end