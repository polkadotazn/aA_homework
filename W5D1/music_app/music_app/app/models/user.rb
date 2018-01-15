class User < ApplicationRecord
  validates :email, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}

  after_initialize :ensure_session_token

  attr_reader :password

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save
    self.session_token
  end

  def is_password?(password)
    check_pw = BCrypt::Password.new(self.password_digest)
    check_pw.is_password?(password)
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return user if user.nil? || user.is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  private

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end
end