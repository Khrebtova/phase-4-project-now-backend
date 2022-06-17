class User < ApplicationRecord
    validates_presence_of :username, :first_name, :last_name, :role
    validates_uniqueness_of :username
    
    has_secure_password
end
