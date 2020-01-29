class Post < ActiveRecord::Base
	include ActiveModel::Validations
  	# validates_with NotClickbaitValidator
	validates :title, presence: :true
	validates :content, length: { minimum: 250}
	validates :summary, length: {maximum: 250}
	validates_inclusion_of :category, in: ["ficton", "nonfiction", "Fiction", "Nonfiction"] 
	validates :title, not_clickbait: true
end
