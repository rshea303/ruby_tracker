class Job < ActiveRecord::Base
  belongs_to :city

  validates :title, :description, :state, presence: true
end
