class Bookmark < ActiveRecord::Base
  CATEGORIES = %w(Serious Funny Useful)

  validates :title, presence: true
  validates :url, format: { with: /\Ahttp/ }
  validates :category, inclusion: { in: CATEGORIES }
end
