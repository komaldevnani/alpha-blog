class Article < ActiveRecord::Base
  validates :title, presence: True, length: {minimum:3,maximum:30}
  validates :title, presence: True
end