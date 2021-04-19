class Chirp < ApplicationRecord
  validates :text, length: {maximum: 140}

  def self.getAllChirpsOrdered
    self.all.order("created_at DESC")
  end
end
