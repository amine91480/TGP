class HomeController < ApplicationController
	def index
		@gossip_arr = Gossip.all
	end
end
