class Game < ApplicationRecord
  has_many :comments
  attachment :game_image
  
  validates :game_title,:game_image,:game_introduction, presence: true
end
