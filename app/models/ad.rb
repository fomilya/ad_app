class Ad < ApplicationRecord
	has_one_attached :photo
	has_many :comments
	validates :title, presence: true, length: {minimum: 5}
end
