# frozen_string_literal: true

class User < ApplicationRecord
  include EventsHelper
  has_many :events, foreign_key: "creator_id", dependent: :destroy
  has_many :attendedevents, class_name: "AttendedEvent", foreign_key: "attendee_id", dependent: :destroy
  validates :name, presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 40 }
end
