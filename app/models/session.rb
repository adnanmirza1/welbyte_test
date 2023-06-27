class Session < ApplicationRecord
  enum status: { available: 0, booked: 1, completed: 2 }

  belongs_to :therapist

  validates :client_email, presence: true, if: :booked?
  validates :start_time, :end_time, presence: true

  after_create_commit :check_status_for_past_sessions

  def check_status_for_past_sessions
    self.completed! if end_time < Time.now
  end
end
