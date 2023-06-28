class Therapist < ApplicationRecord
  has_many :sessions, dependent: :destroy

  validates :email, :name, presence: true
end
