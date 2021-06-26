class SearchesController < ApplicationController

    def nps_connect
        @resp = Faraday.post('https://nps-projectfour.herokuapp.com/nps') do |req|
        end
        nps_search
    end
    
    def nps_search
        @search = Faraday.get('https://developer.nps.gov/api/v1/parks?&api_key=cdgjmt09KDFy4NRLi7OqQ02jhN37uSne53dnzURZ') do |req|
        end
        @search_result = JSON.parse(@search.body)
        render json: @search_result
    end
end
