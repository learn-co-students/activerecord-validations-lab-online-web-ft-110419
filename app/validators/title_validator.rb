class TitleValidator < ActiveModel::Validator
  def validate(record)
    clickbait_terms = [ /Won't Believe/i, /Secret/i, /Top [0-9]*/i, /Guess/i ]

    unless !clickbait_terms.none? { |term| term.match?(record.title) }
      record.errors[:title] << "Not clickbait-y enough!"
    end
  end
end

