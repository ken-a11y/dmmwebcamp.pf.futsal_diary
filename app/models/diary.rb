class Diary < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :diary_comments, dependent: :destroy
  has_many :diary_favorites, dependent: :destroy
  has_many :tactic_tags, dependent: :destroy
  has_many :tags, through: :tactic_tags

  validates :place, presence: true
  validates :result, presence: true
  validates :good, presence: true, length: {maximum: 200}
  validates :bad, presence: true, length: {maximum: 200}

  def save_tags(savebook_tags)
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags = current_tags - savebook_tags
    new_tags = savebook_tags - current_tags

    old_tags.each do |old_name|
      self.tags.delete Tag.find_by(tag_name:old_name)
    end

    new_tags.each do |new_name|
      diary_tag = Tag.find_or_create_by(tag_name:new_name)
      self.tags << diary_tag
    end
  end

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
