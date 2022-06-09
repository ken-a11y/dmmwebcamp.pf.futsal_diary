class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :diaries, dependent: :destroy
  has_many :diary_comments, dependent: :destroy
  has_many :diary_favorites, dependent: :destroy
  #has_many :team_users, dependent: :destroy
  belongs_to :team
end