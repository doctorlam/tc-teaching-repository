class Topic < ApplicationRecord
	has_many :entries, through: :entry_topics
	has_many :entry_topics
	belongs_to :user
end
