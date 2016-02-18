require 'open-uri'
class GitHub
	def initialize
		@portfolio = "https://api.github.com/repos/akpersad/Portfolio/languages"
		@johda = "https://api.github.com/repos/akpersad/Johda/languages"
		@highfive = "https://api.github.com/repos/akpersad/HighFive/languages"
		@not_imessage = "https://api.github.com/repos/akpersad/Not_iMessage/languages"
		@maps = "https://api.github.com/repos/akpersad/google-maps-api-projects/languages"
		runner
		# binding.pry
	end

	def runner
		@portfolio_languages = JSON.load(open(@portfolio))
		@johda_languages = JSON.load(open(@johda))
		@highfive_languages = JSON.load(open(@highfive))
		@not_imessage_languages = JSON.load(open(@not_imessage))
		@maps_languages = JSON.load(open(@maps))
	end

	def portfolio
		@portfolio_languages
	end

	def johda
		@johda_languages
	end

	def highfive
		@highfive_languages
	end

	def not_imessage
		@not_imessage_languages
	end

	def maps
		@maps_languages
	end
end