class CreateUserLoginCredentials < ActiveRecord::Migration[6.0]
  def change
    create_table :user_login_credentials do |t|
      t.string :user_name
      t.string :password
      t.string :email
      t.integer :mobile_no

      t.timestamps
    end
  end
end
