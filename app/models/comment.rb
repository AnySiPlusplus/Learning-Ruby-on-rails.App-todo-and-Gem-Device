class Comment < ApplicationRecord
	belongs_to :post
 	validates :username, presence: true, length: {minimum: 5}
end
