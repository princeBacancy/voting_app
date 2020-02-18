class OfflineMode < ApplicationRecord
  belongs_to :user_login_credential
  has_many :offline_mode_data
  has_one :offline_mode_winner
end
