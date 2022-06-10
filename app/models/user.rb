class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :diaries, dependent: :destroy
  has_many :diary_comments, dependent: :destroy
  has_many :diary_favorites, dependent: :destroy
  belongs_to :team

  # validates :team_id, presence: true
  # validates :name, presence: true
  # validates :age, presence: true
  # validates :number, presence: true
  # validates :position, presence: true
  # validates :speed_rate, presence: true
  # validates :power_rate, presence: true
  # validates :tactics_rate, presence: true
  
  enum is_deleted: {"有効": false,"退会": true }
end