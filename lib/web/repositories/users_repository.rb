require 'warden'

class UsersRepository < Hanami::Repository
  def sign_in(email, password)
    user = find_by_email(email)
    user && user.password == password ? user : throw(:warden)
  end
end
