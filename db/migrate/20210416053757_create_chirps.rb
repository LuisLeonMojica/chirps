class CreateChirps < ActiveRecord::Migration[6.1]
  def change
    create_table :chirps do |t|
      t.string :text, null: false
      t.timestamps
    end
  end
end
