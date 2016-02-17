require 'open-uri'
class GitHub
	def initialize
		@portfolio = "https://api.github.com/repos/akpersad/Portfolio/languages"
		@johda = "https://api.github.com/repos/akpersad/Johda/languages"
		@highfive = "https://api.github.com/repos/akpersad/HighFive/languages"
		@not_imessage = "https://api.github.com/repos/akpersad/Not_iMessage/languages"
		@maps = "https://api.github.com/repos/akpersad/google-maps-api-projects/languages"
		# binding.pry
	end

	def languages
		@language_hash = JSON.load(open(@url))
		@language_hash = JSON.load(open(@url))
		@language_hash = JSON.load(open(@url))
		@language_hash = JSON.load(open(@url))
		@language_hash = JSON.load(open(@url))
	end
end