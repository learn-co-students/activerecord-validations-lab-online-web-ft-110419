class CategoryValidator < ActiveModel::Validator

    def validate(record)
        unless record.category.include? "Fiction" || "Non-Fiction"
            record.errors[:category] << "Only Categories allowed are Fiction and Non-Fiction."
        end
    end

end