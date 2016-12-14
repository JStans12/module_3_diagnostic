class SearchController < ApplicationController

  def index
    @stations = Station.by_location(params[:location])
  end

end
