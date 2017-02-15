class Course < ApplicationRecord
  belongs_to :user
  has_many :sections
  has_many :enrollments
  mount_uploader :image, ImageUploader

  validates :title, :presence => { :message => "Course title is required" }
  validates :description, :presence => { :message => "Description is required" }
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
end
