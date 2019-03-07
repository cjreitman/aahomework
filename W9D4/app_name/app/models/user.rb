require 'bcrypt'

class User < ApplicationRecord

  include Bcrypt

  after_initialize :ensure_session_token

  validates :username, null: false
  validates :session_token, null: false 
  validates :password_digest, null: false, message: 'Password cant be blank'
  validates :password, null: false, length: { minimum: 6, allow_nil: true }


  def self.find_by_credentials(username, pw)

    user = User.find_by(username: username)
    return nil if user.nil?
    
    if user.is_password?(password)
      user
    else
      nil
    end
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save
    self.session_token
  end

  def password=(pw)
    @password = pw
  end

  private

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end

end
