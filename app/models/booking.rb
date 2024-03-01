class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :workshop

  after_create :update__count

  def update__count
    workshop.update(remaining_seats: workshop.total_seats - no_of_tickets)
  end
end
