class PortfolioController < ApplicationController
  def home
  end

  def projects
  	@now = GitHub.new
  	@portfolio = @now.portfolio
    @spotify = @now.spotify
  	@johda = @now.johda
    @todo = @now.todo
  	@highfive = @now.highfive
  	@not_imessage = @now.not_imessage
  	@maps = @now.maps
  end
end
