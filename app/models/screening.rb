class Screening < ApplicationRecord
	has_many :bookings

	belongs_to :movie
	belongs_to :theatre

  def start_time
    start_at.strftime("%H:%M")
  end

  def end_time
    end_at.strftime("%H:%M")
  end

  def booked? 
    Bookings.where(user_id: user_id).first.present?
  end

  def in_the_past?
    # current_time = Time.now
    # start_at - start_at.midnight < current_time - current_time.midnigh
    if Time.now> start_at.to_time
      errors.add(:Start_at, "Cannot show")
    elsif Time.now > end_at.to_time
      errors.add(:Start_at, "Cannot show")
    end
  end

  def seat_available
    theatre.capacity - bookings.count
  end

  def seat_available?

    seat_available > 0
  end

  def availability_formatted
    "#{seat_available} / #{theatre.capacity} seats"
  end
end
