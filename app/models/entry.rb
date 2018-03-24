class Entry < ApplicationRecord
	  mount_uploader :attachment, AttachmentUploader
	  belongs_to :category
	    scope :by_category, -> category { where(:category => category) }
	   
	   scope :by_level, -> level { where(:level => level) }


end