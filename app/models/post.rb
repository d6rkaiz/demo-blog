class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  scope :by_recently_created, -> { order(created_at: :desc) }
end
