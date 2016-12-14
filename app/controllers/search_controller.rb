class SearchController < ApplicationController

  def index
    stations = NrelService.request_stations(params[:location])
  end

end
