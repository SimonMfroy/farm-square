class Article < ApplicationRecord
  default_scope { order(created_at: :desc) }

  has_one_attached :picture

  validates :title, presence: true, length: { minimum: 3, maximum: 50}
  validates :content, presence: true, length: { minimum: 3, maximum: 5000}
end
