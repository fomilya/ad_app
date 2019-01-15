class Ad < ApplicationRecord
	has_one_attached :ad_image
	validates :title, presence: true, length: {minimum: 5}
end
