require 'open-uri'
class GitHub
	def initialize
		key = ENV["github_key"]
		@portfolio = "https://api.github.com/repos/akpersad/Portfolio/languages?access_token=#{key}"
		@johda = "https://api.github.com/repos/akpersad/Johda/languages?access_token=#{key}"
		@todo = "https://api.github.com/repos/akpersad/ToDo/languages?access_token=#{key}"
		@highfive = "https://api.github.com/repos/akpersad/HighFive/languages?access_token=#{key}"
		@not_imessage = "https://api.github.com/repos/akpersad/Not_iMessage/languages?access_token=#{key}"
		@maps = "https://api.github.com/repos/akpersad/google-maps-api-projects/languages?access_token=#{key}"
		@spotify = "https://api.github.com/repos/akpersad/spotify-test/languages?access_token=#{key}"
		runner
	end

	def runner
		@portfolio_languages = JSON.load(open(@portfolio))
		@johda_languages = JSON.load(open(@johda))
		@todo_languages = JSON.load(open(@todo))
		@highfive_languages = JSON.load(open(@highfive))
		@not_imessage_languages = JSON.load(open(@not_imessage))
		@maps_languages = JSON.load(open(@maps))
		@spotify_languages = JSON.load(open(@spotify))
		# binding.pry
	end

	def portfolio
		arr = Array.new
		add = @portfolio_languages.values.inject(0){|sum,x| sum + x }
		array = @portfolio_languages.sort.flatten
		arr.push(array[0],((array[1].to_f/add)*100).round(2),array[2],((array[3].to_f/add)*100).round(2),array[4],((array[5].to_f/add)*100).round(2),array[6],((array[7].to_f/add)*100).round(2),array[8],((array[9].to_f/add)*100).round(2))
	end

	def spotify
		arr = Array.new
		add = @spotify_languages.values.inject(0){|sum,x| sum + x }
		array = @spotify_languages.sort.flatten
		arr.push(array[0],((array[1].to_f/add)*100).round(2),array[2],((array[3].to_f/add)*100).round(2),array[4],((array[5].to_f/add)*100).round(2),array[6],((array[7].to_f/add)*100).round(2))
	end

	def johda
		arr = Array.new
		add = @johda_languages.values.inject(0){|sum,x| sum + x }
		array = @johda_languages.sort.flatten
		arr.push(array[0],((array[1].to_f/add)*100).round(2),array[2],((array[3].to_f/add)*100).round(2),array[4],((array[5].to_f/add)*100).round(2),array[6],((array[7].to_f/add)*100).round(2),array[8],((array[9].to_f/add)*100).round(2))
	end

	def todo
		arr = Array.new
		add = @todo_languages.values.inject(0){|sum,x| sum + x }
		array = @todo_languages.sort.flatten
		arr.push(array[0],((array[1].to_f/add)*100).round(2),array[2],((array[3].to_f/add)*100).round(2),array[4],((array[5].to_f/add)*100).round(2),array[6],((array[7].to_f/add)*100).round(2),array[8],((array[9].to_f/add)*100).round(2))
	end

	def highfive
		arr = Array.new
		add = @highfive_languages.values.inject(0){|sum,x| sum + x }
		array = @highfive_languages.sort.flatten
		arr.push(array[0],((array[1].to_f/add)*100).round(2),array[2],((array[3].to_f/add)*100).round(2),array[4],((array[5].to_f/add)*100).round(2),array[6],((array[7].to_f/add)*100).round(2))
	end

	def not_imessage
		arr = Array.new
		add = @not_imessage_languages.values.inject(0){|sum,x| sum + x }
		array = @not_imessage_languages.sort.flatten
		arr.push(array[0],((array[1].to_f/add)*100).round(2),array[2],((array[3].to_f/add)*100).round(2),array[4],((array[5].to_f/add)*100).round(2),array[6],((array[7].to_f/add)*100).round(2),array[8],((array[9].to_f/add)*100).round(2))
	end

	def maps
		arr = [:Ruby, 100.0]
	end
end