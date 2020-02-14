class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show,:edit,:update,:destroy]

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end

  def show
  end

  def new
  end
  
  def create
    @gossip = Gossip.new
    @gossip.title = params[:title]
    @gossip.content = params[:content]
    @gossip.user = User.find_by(id: session[:user_id])
    @gossip.city = City.all.first
    if @gossip.save
      puts "Potin add !"
      redirect_to root_path, flash:{succes: " Gossips correctement crée "}

    else
      flash[:error] = 'Invalid Gossips'
      render "gossips/new"

    end
  end

  def edit
  end

  def update
    gossip_params = params.require(:gossip).permit(:title,:content)
    puts gossip_params

    if @gossip.update(gossip_params)
      @gossip.update(gossip_params)
      redirect_to root_path, flash:{succes: " Gossips correctement modifier "}
    else
      render :edit
    end
  end

  def destroy
    if @gossip.destroy
      redirect_to(root_path)
    else
    render :edit
    end
  end

end
