class Diary < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :diary_comments, dependent: :destroy
  has_many :diary_favorites, dependent: :destroy
  has_many :tactics_tags, dependent: :destroy
  has_many :tags, through: :tactics_tags
  
  validates :place, presence: true
  validates :result, presence: true
  validates :good, presence: true, length: {maximum: 200}
  validates :bad, presence: true, length: {maximum: 200}
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
  
  def favorited_by?(user)
    diary_favorites.exists?(user_id: user.id)
  end
end
