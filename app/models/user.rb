class User < ApplicationRecord
    has_secure_password

    def self.from_omniauth(auth_response)
        User.find_or_create_by(uid: auth_response[:uid]) do |u|
            u.username = auth_response[:info][:name]
            u.email = auth_response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end
end
