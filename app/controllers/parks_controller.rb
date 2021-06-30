class ParksController < ApplicationController
  before_action :set_park, only: [:show, :update, :destroy]

#   def park_connect
#     @resp = Faraday.post('https://nps-projectfour.herokuapp.com/nps') do |req|
#     end
#     park_search
#   end


  def search 
    park_id = params[:parkCode]
    search = Faraday.get "https://developer.nps.gov/api/v1/parks?parkCode={park_id}&api_key=cdgjmt09KDFy4NRLi7OqQ02jhN37uSne53dnzURZ"
    @search_result = JSON.parse(search.body)
      render json: @search_result
  end
end
