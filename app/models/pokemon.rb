class Pokemon < ApplicationRecord
  # Each Pokemon will have a quote based on the Type
  belongs_to :quote
end
