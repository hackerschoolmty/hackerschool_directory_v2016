class Generation < ActiveRecord::Base
  has_many :hackers
  has_many :courses

  validates :name, :start_date, presence: true
end
