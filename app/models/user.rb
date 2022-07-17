class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile_image
  has_many :diaries, dependent: :destroy
  has_many :diary_comments, dependent: :destroy
  has_many :diary_favorites, dependent: :destroy
  belongs_to :team

  validates :team_id, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :number, presence: true
  validates :position, presence: true
  validates :speed_rate, presence: true
  validates :power_rate, presence: true
  validates :tactics_rate, presence: true

  enum is_deleted: {"有効": false,"退会": true }

  def create_user_icon
    [icon_00.png, icon_00.png, icon_01.png, icon_02.png, icon_03.png, icon_04.png, icon_05.png].sample
  end

  def get_profile_image
    sample_image = ['icon_00.png', 'icon_01.png', 'icon_02.png', 'icon_03.png', 'icon_04.png', 'icon_05.png'].sample
    file_path = Rails.root.join("app/assets/images/#{sample_image}")
    profile_image.attach(io: File.open(file_path), filename: 'default-image.jpeg', content_type: 'image/jpeg')
  end

end