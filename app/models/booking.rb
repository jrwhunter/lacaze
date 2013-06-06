class Booking < ActiveRecord::Base
  attr_accessible :end, :name, :start

  validates :name,  presence: true
  validates :start, presence: true
  validates :end, presence: true
  
end
