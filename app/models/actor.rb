class Actor < ApplicationRecord
    belongs_to :movie
    validates_presence_of :name
end
