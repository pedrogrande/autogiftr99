class Gift < ActiveRecord::Base
	has_many :gift_occasions
	has_many :occasions, through: :gift_occasions

	mount_uploader :image, GiftImageUploader

	def self.order_by_name
		order(name: :asc)
	end
end
