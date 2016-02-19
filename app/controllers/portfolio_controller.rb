class PortfolioController < ApplicationController
  def home
  	@now = GitHub.new
  	@portfolio = @now.portfolio
  	@johda = @now.johda
  	@highfive = @now.highfive
  	@not_imessage = @now.not_imessage
  	@maps = @now.maps
  	# binding.pry
  end
end
