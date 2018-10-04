class Choice < ApplicationRecord
    has_many :outcomes
    has_many :contacts, through: :outcomes
end
