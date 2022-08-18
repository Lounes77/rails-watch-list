class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { in: 6..20 }
  validates :movie_id, uniqueness: { scope: :list_id }
end
