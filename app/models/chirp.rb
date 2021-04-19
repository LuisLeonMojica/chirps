class Chirp < ApplicationRecord
  validates :text, length: {maximum: 140}

  def self.getAllChirpsOrdered
    self.all.order("created_at DESC")
  end

  def upvote
    self.update_attribute("upvotes", self.upvotes + 1)
  end
end
