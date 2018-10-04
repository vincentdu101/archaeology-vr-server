class Outcome < ApplicationRecord
  belongs_to :contact
  belongs_to :choice
end
