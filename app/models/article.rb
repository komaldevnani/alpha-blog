class Article < ActiveRecord::Base
  validates :title, presence: TRUE, length: {minimum:3,maximum:30}
  validates :title, presence: TRUE
end