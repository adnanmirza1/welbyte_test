class Therapist < ApplicationRecord
  has_many :sessions

  validates :email, :name, presence: true
end
