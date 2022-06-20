class TacticItem < ApplicationRecord
  has_one_attached :tactic_image
  belongs_to :tactic
end