class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  
    has_secure_token
  
    # これUpdate時以外も効くように変更する
    # PasswordのValidationsをUpdate時のみ実行
    has_secure_password validations: false
    validates :password, on: :update, confirmation: { allow_blank: true },
                         length: { maximum: ActiveModel::SecurePassword::MAX_PASSWORD_LENGTH_ALLOWED }
    validates :password_digest, on: :update, presence: true
    validates :name, length: { in: 2..20 }, allow_nil: true
    validates :email, on: :update, presence: true, length: { maximum: 255 },
                      uniqueness: { case_sensitive: false },
                      format: { with: VALID_EMAIL_REGEX }
    validates :birth_year, numericality: { in: 1900..Time.zone.today.year }
  
    before_save { self.email = email&.downcase }
  end
  