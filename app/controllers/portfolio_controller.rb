class PortfolioController < ApplicationController
  def index
  	@now = GitHub.new
  	@hello = @now.languages
  	# binding.pry
  end
end
