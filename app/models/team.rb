class Team < ApplicationRecord
  has_one_attached :team_image
  belongs_to :owner, optional: true, class_name: 'User'
  has_many :users
  
  validates :team_name, presence: true
  validates :introduction, presence: true

  def get_team_image
    unless team_image.attached?
      file_path = Rails.root.join('app/assets/images/no_img.jpg')
      team_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    team_image.variant(resize_to_limit: [100, 100]).processed
  end

  def is_owned_by?(user)
    owner.id == user.id
  end
  
  def includesUser?(user)
    team_users.exists?(user_id: user.id)
  end
end