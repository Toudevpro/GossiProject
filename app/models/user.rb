class User < ApplicationRecord
	belongs_to :city
	has_many :comments, dependent: :destroy
	has_many :gossips, dependent: :destroy
	has_many :subcomments, dependent: :destroy
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "Message"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "Message"
end
