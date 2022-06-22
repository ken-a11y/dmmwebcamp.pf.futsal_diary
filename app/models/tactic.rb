class Tactic < ApplicationRecord
  has_one_attached :tactic_image
  has_many :tactic_items, dependent: :destroy
  
  def get_tactic_image(width, height)
    unless tactic_image.attached?
      file_path = Rails.root.join('app/assets/images/no-img.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpeg', content_type: 'image/jpeg')
    end
    tactic_image.variant(resize_to_limit: [width, height]).processed
  end
  
  def is_followed_by?(user)
    reverse_of_relationships.find_by(following_id: user.id).present?
  end
end