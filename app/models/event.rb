class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  #has_many :users, through: :attended_events, foreign_key: "event_id"
  has_many :attended_events, foreign_key: "attended_event", dependent: :destroy
end
