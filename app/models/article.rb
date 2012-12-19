class Article < ActiveRecord::Base
	validates :title, :presence => true
	validates :body, :presence => true

	belongs_to :user
	has_and_belongs_to_many :categories
	has_many :comments

	scope :published, where("articles.published_at IS NOT NULL")
	scope :draft, where("articles.published_at IS NULL")

	def long_title
		"#{title} - #{published_at}"
	end
end
