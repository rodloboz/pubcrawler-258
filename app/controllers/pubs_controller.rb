class PubsController < ApplicationController
  def index
    @pubs = Pub.all
  end

  def new
    @pub = Pub.new
  end

  def create
    @pub = Pub.create(pub_params)

    if @pub.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def pub_params
    params.require(:pub).permit(:name, :address, :district, :description, :photo)
  end
end
