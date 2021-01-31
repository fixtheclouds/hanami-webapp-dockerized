require 'bcrypt'

class Users < Hanami::Entity
  def password
    BCrypt::Password.new(encrypted_password)
  end
end
