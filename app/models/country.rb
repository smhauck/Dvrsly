class Country < ApplicationRecord
  belongs_to :global_area, optional: true
end
