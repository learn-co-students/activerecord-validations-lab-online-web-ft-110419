class TitleValidator < ActiveModel::Validator
  PATTERNS = [
    /Won't Believe/,
    /Secret/,
    /Top \d/,
    /Guess/
  ]
  
  def validate(post)
    if PATTERNS.none? { |p| p.match? post.title}
      post.errors[:title] << "is not clickbait"
    end
  end
end
