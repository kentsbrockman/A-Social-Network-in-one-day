class Comment < ApplicationRecord
  validates :content,
    presence: true
  belongs_to :article
  belongs_to :author, class_name: "User"
end
