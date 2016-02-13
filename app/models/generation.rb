class Generation < ActiveRecord::Base
  has_many :hackers
  has_many :courses

  scope :active, -> {where status: "active"}
  scope :inactive, -> {where status: "inactive"}
  scope :created_before, ->(time){where("created_at < ?", time)} 

  validates :name, :start_date, presence: true
end
