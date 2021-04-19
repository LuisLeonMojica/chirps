class AddUpvotesToChirps < ActiveRecord::Migration[6.1]
  def change
    add_column :chirps, :upvotes, :integer, default: 0
  end
end
