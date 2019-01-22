class Comment < ApplicationRecord
  belongs_to :ad
  validates :username, presence: true, length: {minimum: 1}
  validates :body, presence: true, length: {minimum: 1}
end
