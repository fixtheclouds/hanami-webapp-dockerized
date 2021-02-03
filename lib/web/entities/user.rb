require 'bcrypt'

class User < Hanami::Entity
  include BCrypt

  def password
    @password ||= Password.new(encrypted_password)
  end
end
