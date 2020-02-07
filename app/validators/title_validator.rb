class TitleValidator < ActiveModel::Validator

    def validate(record)
        
        unless record.title.match?(/Won't Believe|Top \d*|Secret|Guess/)
            record.errors[:name] << "We're only allowed to have clickbait titles!"
        end
    end

end

