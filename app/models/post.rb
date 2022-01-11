class Post < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :image, presence: true
end
