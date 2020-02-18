class CreateOfflineModeData < ActiveRecord::Migration[6.0]
  def change
    create_table :offline_mode_data do |t|
      t.references :offline_mode, null: false, foreign_key: true
      t.string :name_of_candidate
      t.integer :votes_count

      t.timestamps
    end
  end
end
