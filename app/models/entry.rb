class Entry < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader

	has_many :entry_topics
  	has_many :topics, through: :entry_topics

  	has_many :entry_categories
  	has_many :categories, through: :entry_categories

  	has_many :entry_courses
  	has_many :courses, through: :entry_courses
	has_many :favorites
	
	belongs_to :user
	acts_as_votable

	scope :by_categories, ->(ids_ary) { joins(entry_categories: :category).where("categories.id" => ids_ary) }
	scope :by_topics, ->(ids_ary) { joins(entry_topics: :topic).where("topics.id" => ids_ary) }
	scope :by_level, -> level { where(:level => level) }
	scope :by_courses, -> (ids_ary) { joins(entry_courses: :course).where("courses.id" => ids_ary) }

end