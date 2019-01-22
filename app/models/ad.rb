class Ad < ApplicationRecord
	include Taggable
	belongs_to :user
	has_one_attached :photo
	has_many :comments
	validates :title, presence: true, length: {minimum: 5}

	def self.search(search)

	  where("title LIKE ? OR adress LIKE ? OR description LIKE ? OR email LIKE ? OR name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")

	end
end
