class Contact < ApplicationRecord
    has_many :outcomes
    has_many :choices, through: :outcomes

    belongs_to :game
end
