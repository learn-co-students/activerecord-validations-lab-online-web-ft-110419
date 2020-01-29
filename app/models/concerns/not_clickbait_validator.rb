class NotClickbaitValidator < Activemodel::EachValidator
	def not_clickbait(record, attribute, value)
		clickbaity = ["Won't Believe", "Secret", "Guess"]
		clickbait = false
		clickbait.each do |cb|
			if value.include?(cb)
				clickbait = true
			end 
		end
		if value.match(/Top\s\d+/)
			clickbait = true
		end 

		if clickbait == false
			record.errors.add attribute, "Needs a more clickbaity title."
		end
	end
end