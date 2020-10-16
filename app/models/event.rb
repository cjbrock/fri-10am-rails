class Event < ApplicationRecord
    has_many :attendees
    has_many :locations, through: :attendees
end
