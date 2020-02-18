class CreateOfflineModes < ActiveRecord::Migration[6.0]
  def change
    create_table :offline_modes do |t|
      t.references :user_login_credential, null: false, foreign_key: true
      t.integer :number_of_candidates
      t.integer :number_of_maximum_voters

      t.timestamps
    end
  end
end
