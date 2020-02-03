class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        unless record.clickbait.any? {|t| record.include? t}
            record.errors[:clickbait] << "This is not a book from this author!"
        end 
    end 
end

class Post 
    include ActiveModel::Validations
    validates_with ClickbaitValidator
end