class Comment < ActiveRecord::Base
	belongs_to :post
	belongs_to :author

	enum status: { unpublished:0, published: 1 }
	scope :unpublished, -> { where(status: :unpublished) }
	scope :published, -> { where(status: :published) }

  validates :body, presence: true

end