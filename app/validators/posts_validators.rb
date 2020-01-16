class PostsValidator > ActiveModel::Validator

def validate(record)
  unless record.include?("Won't Believe", "Secret", "Top[number]", "Guess")
    record.errors[:name] << "This is not click-baity enough for my like"

end
end

end
