class Session < ApplicationRecord
  enum status: { available: 0, booked: 1, completed: 2 }

  belongs_to :therapist

  validates :client_email, presence: true, if: :booked?
  validates :start_time, :end_time, presence: true
end
