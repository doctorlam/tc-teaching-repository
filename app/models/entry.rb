class Entry < ApplicationRecord
	  mount_uploader :attachment, AttachmentUploader
	  belongs_to :category
	  has_many :entry_topics
  		has_many :topics, through: :entry_topics
	  belongs_to :user
	    scope :by_category, -> category { where(:category => category) }

scope :by_topics, ->(ids_ary) { joins(entry_topics: :topic).where("topics.id" => ids_ary) }
	   
	   scope :by_level, -> level { where(:level => level) }

end