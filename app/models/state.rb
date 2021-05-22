class State < ApplicationRecord
  belongs_to :country, optional: true
end
