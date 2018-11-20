class Choice < ApplicationRecord
    has_many :outcomes
    has_many :contacts, through: :outcomes

    belongs_to :game
end
