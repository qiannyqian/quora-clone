class User < ActiveRecord::Base
  has_many :questions

  has_secure_password

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  def self.login(email, password)
    user = User.find_by_email(params[:user][:email])
    user.authenticate(params[:user][:password])
  end

end
