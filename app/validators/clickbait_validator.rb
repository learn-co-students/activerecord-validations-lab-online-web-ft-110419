class ClickbaitValidator < ActiveModel::Validator

    def validate(record)
        if record.title.present?
            if !record.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
            record.errors[:title] << "You need a valid title!"
            end
        else
            record.errors[:title] << "You need a title!"
        end
    end

end