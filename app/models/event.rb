class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :users, through: :attended_events, foreign_key: "event_id"
end
