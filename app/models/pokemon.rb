class Pokemon < ApplicationRecord
  # Each Pokemon will have a quote based on the Type
  belongs_to :quote
  # has_and_belongs_to_many :types
  has_many :pokemon_types
  has_many :types, through: :pokemon_types

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
