class Admin < ApplicationRecord
    has_many :services
    has_many :coaches
    has_many :workouts
    has_many :events
    has_many :users
end
