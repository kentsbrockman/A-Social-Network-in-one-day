class Article < ApplicationRecord
  validates :title,
    presence: true
  validates :content,
    presence: true
  belongs_to :author, class_name: "User"
  has_many :comments
  scope :filter_by_visibility, -> (visibility) { where visibility: visibility }
end
