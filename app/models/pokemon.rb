class Pokemon < ApplicationRecord
  max_paginates_per 20
  # Each Pokemon will have a quote based on the Type
  belongs_to :quote
  # has_and_belongs_to_many :types
  has_many :pokemon_types
  has_many :types, through: :pokemon_types

  validates :name, :pokedexid, :attack, :defense, :spdefense, :spattack, :speed, presence: true
  validates :pokedexid, uniqueness: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
