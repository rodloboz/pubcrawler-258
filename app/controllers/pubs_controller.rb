class PubsController < ApplicationController
  def index
    @pubs = Pub.where.not(latitude: nil, longitude: nil)

    @markers = @pubs.map do |pub|
      {
        lat: pub.latitude,
        lng: pub.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { pub: pub })
      }
    end
  end

  def new
    @pub = Pub.new
  end

  def create
    @pub = Pub.create(pub_params)

    if @pub.save
      redirect_to pubs_path
    else
      render :new
    end
  end

  private

  def pub_params
    params.require(:pub).permit(:name, :address, :district, :description, :photo)
  end
end
