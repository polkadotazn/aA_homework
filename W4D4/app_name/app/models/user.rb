class User < ApplicationRecord
  attr_reader :password

  validates :username, :password_digest, :session_token, presence: true
  validates :password, length: { minimum:6, allow_nil: true }

  before_validation :ensure_session_token


  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.find_by_credentials(username, password)
    maybe_user = User.find_by(username: username)

    if BCrypt::Password.new(maybe_user.password_digest).is_password?(password)
      maybe_user
    else
      nil
    end
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
end
