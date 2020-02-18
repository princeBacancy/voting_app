class UserLoginCredential < ApplicationRecord
    has_many :offline_modes

    validates :user_name, uniqueness:true, presence:true
    validates :email, uniqueness: true, format: { with: /\A(\w+\.*)+@\w+(\.\w{2,3})+\Z/}
    validates :password, presence: true, confirmation: true, length:{minimum:6}  
    validates :password_confirmation ,presence: true 
    validates :mobile_no , presence:true, length:{is:10}, uniqueness:true
end
