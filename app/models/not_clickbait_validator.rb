class NotClickbaitValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		clickbaity = ["Won't Believe", "Secret", "Guess"]
		clickbait = false
		if value
			if value.match(/Top\s\d+/)
				clickbait = true
			else clickbaity.each do |cb|
				if value.include?(cb)
					clickbait = true
				end
			end
			end 
		end

		if clickbait == false
			record.errors.add attribute, "Needs a more clickbaity title."
		end
	end
end