class PortfolioController < ApplicationController
  def index
  	@now = GitHub.new
  	# @portfolio = @now.portfolio
  	# @johda = @now.johda
  	# @highfive = @now.highfive
  	# @not_imessage = @now.not_imessage
  	# @maps = @now.maps
  end
end
