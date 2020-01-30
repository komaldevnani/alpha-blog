class User < ActiveRecord::Base
  has_many :articles
  before_save {self.email = email.downcase}
  validates :username, presence: TRUE, length:{minimum: 3, maximum: 25},
                        uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\Z/i
  validates :email, presence: TRUE, length: {maximum: 105}, 
        uniqueness: {case_sensitive: false}, format: { with: VALID_EMAIL_REGEX}
end