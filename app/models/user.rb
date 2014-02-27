require 'bcrypt'

class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  # has_secure_password

  #users.password_hash in the database is a :string
  include Bcrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
