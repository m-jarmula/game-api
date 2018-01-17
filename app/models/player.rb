class Player < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :user_id, uniqueness: true

  scope :active_and_current_player, ->(player) { where(active: true).or(Player.where(id: player.id)) }
end
