class Entry < ApplicationRecord
	  mount_uploader :attachment, AttachmentUploader

	  belongs_to :category, :optional => true
end