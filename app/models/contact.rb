class Contact < ApplicationRecord
    has_many :outcomes
    has_many :choices, through: :outcomes
end
