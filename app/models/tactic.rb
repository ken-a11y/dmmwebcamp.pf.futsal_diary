class Tactic < ApplicationRecord
  has_many :tactics, dependent: :destroy
end