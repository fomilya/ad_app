class Ad < ApplicationRecord
	has_one_attached :photo
	validates :title, presence: true, length: {minimum: 5}
end
