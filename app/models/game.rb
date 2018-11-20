class Game < ApplicationRecord
    has_many :choices
    has_many :contacts
end
