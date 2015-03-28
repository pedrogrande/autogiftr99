class Occasion < ActiveRecord::Base
	has_many :gift_occasions
	has_many :gifts, through: :gift_occasions
  belongs_to :recipient
  validates :occasion_type, :date, :recipient_id, presence: true
  validate :date_in_future

  def date_in_future
  	if date < Date.today + 7
  		errors.add(:date, "Must be 7 days in future")
  	end
  end

  def self.future
  	where(date >= Date.today)
  end

  def self.order_by_date
  	future.order(date: :asc)
  end
end
