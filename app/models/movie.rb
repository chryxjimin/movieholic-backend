class Movie < ApplicationRecord
    has_many :actors
    validates_presence_of :title
end
