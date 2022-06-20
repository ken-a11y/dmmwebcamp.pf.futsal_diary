class Tactic < ApplicationRecord
  has_one_attached :tactic_image
  has_many :tactic_items, dependent: :destroy
end