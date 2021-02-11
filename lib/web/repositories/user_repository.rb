require 'warden'

class UserRepository < Hanami::Repository
  associations do
    has_many :posts
  end

  def sign_in(email, password)
    user = find_by_email(email)
    user && user.password == password ? user : throw(:warden)
  end
end
