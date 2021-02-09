require 'bcrypt'

class User < Hanami::Entity
  include BCrypt

  attributes do
    attribute :id, Types::Int

    attribute :name, Types::String
    attribute :email, Types::String
    attribute :password, Types::String

    attribute :created_at, Types::Time
    attribute :updated_at, Types::Time
  end

  def password
    @password ||= Password.new(encrypted_password)
  end
end
