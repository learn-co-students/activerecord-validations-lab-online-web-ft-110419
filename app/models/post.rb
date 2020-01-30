class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: {maximum: 250 }
  # validates :category, acceptance: { accept: 'Fiction'}
  # validates :category, acceptance: { accept: 'Non-Fiction'}
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
  validates_with PostValidator
end
