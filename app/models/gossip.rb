class Gossip < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :tagossips
	has_many :tags, through: :tagossips
end
