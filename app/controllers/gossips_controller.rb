class GossipsController < ApplicationController
  # def index
  #   @gossip = Gossip.all
  # end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
  end
  
  def create
    @gossip = Gossip.new
    @gossip.title = params[:title]
    @gossip.content = params[:content]
    @gossip.user = User.all.last
    @gossip.city = City.all.first
    if @gossip.save
      redirect_to root_path
    else
     render "gossips/new"
     puts @gossip.errors.messages
    end  



  end
end
