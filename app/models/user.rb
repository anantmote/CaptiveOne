class User < ActiveRecord::Base


  before_save { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 10 }
  validates :last_name, presence: true, length: { maximum: 10 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :phone, presence: true, length: { maximum: 10 }
  validates :state, presence: true, length: { maximum: 10 }

end
