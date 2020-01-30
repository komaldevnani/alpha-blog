class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: TRUE, length: {minimum:3,maximum:30}
  validates :description, presence: TRUE
end