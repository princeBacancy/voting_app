class CreateOfflineModeWinners < ActiveRecord::Migration[6.0]
  def change
    create_table :offline_mode_winners do |t|
      t.references :offline_mode, null: false, foreign_key: true
      t.string :winner_name
      t.integer :winning_votes

      t.timestamps
    end
  end
end
