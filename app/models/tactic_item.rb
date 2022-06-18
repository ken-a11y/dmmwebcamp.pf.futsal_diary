class TacticItem < ApplicationRecord
  has_many_attached :tactic_image
  belongs_to :tactic
end