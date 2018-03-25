class Entry < ApplicationRecord
	  mount_uploader :attachment, AttachmentUploader
	  belongs_to :category
	  belongs_to :topic
	    scope :by_category, -> category { where(:category => category) }

	     scope :by_topic, -> topic { where(:topic => topic) }
	   
	   scope :by_level, -> level { where(:level => level) }


end