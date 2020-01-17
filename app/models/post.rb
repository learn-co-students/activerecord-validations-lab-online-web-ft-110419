class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 10}
    validates :summary, length: {maximum: 100}
    validates :category, inclusion: {in: %w(small medium large Fiction)}
    validate :title_clickbaity

    def title_clickbaity
       if title.present? && !title.match?(/...Won't Believe.../)
            errors.add(:title, "title is invalid")
        end
    end
end

