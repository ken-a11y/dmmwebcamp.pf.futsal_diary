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

  def save_tags(savediary_tags)
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags = current_tags - savediary_tags
    new_tags = savediary_tags - current_tags

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
      file_path = Rails.root.join('app/assets/images/no_img.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'img/jpeg')
    end
    image
  end

  def favorited_by?(user)
    diary_favorites.exists?(user_id: user.id)
  end
  
  def self.looks(search, word)
    if search == "perfect_match"
      @diary = Diary.where("place LIKE? OR good LIKE? OR bad LIKE?","#{word}")
    elsif search == "forward_match"
      @diary = Diary.where("place LIKE? OR good LIKE? OR bad LIKE?","#{word}%")
    elsif search == "backward_match"
      @diary = Diary.where("place LIKE? OR good LIKE? OR bad LIKE?","%#{word}")
    elsif search == "partial_match"
      @diary = Diary.where("place LIKE? OR good LIKE? OR bad LIKE?","%#{word}%")
    else
      @diary = Diary.all
    end
  end
end