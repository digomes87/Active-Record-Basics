class Comment < ApplicationRecord

	validates :author_id, presence:true
	validates :post_id, presence:true
	validates :body, presence:true
	validates :title, presence:true

	belongs_to :author
	belongs_to :post
end


