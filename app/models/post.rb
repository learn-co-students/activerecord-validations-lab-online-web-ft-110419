class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 12}
    validates :summary, length: { maximum: 40 }
    validates :category, inclusion: { in: %w(Fiction) }
    validates :title, length: { minimum: 15 }
end
