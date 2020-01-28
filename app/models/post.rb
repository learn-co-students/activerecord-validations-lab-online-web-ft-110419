class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :is_clickbait?

    CLICKBAIT_PATTERNS = [
        /Won't Believe/i,
        /Secret/i,
        /Top [0-9]*/i,
        /Guess/i
      ]

    def is_clickbait?
        unless title.present? && CLICKBAIT_PATTERNS.any? {|pattern| title.match? pattern}
            errors.add(:title, "not enough clickbait")
        end
    end

end
