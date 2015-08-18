class Bookmark < ActiveRecord::Base
  validates :url, presence: true, format: {with: /http:\/\//} 
  validates :title, presence: true
  validates :category, presence: true, inclusion: %w(Useful Serious Funny)

end
