class PagesController < ApplicationController
  def home
    @pubs = Pub.all
  end
end
