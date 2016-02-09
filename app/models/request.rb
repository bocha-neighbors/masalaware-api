class Request < ActiveRecord::Base
  validates :urgency_scale, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :actions_attempted, presence: true


end
