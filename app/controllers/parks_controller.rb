class ParksController < ApplicationController
  before_action :set_park, only: [:show, :update, :destroy]

#   def park_connect
#     @resp = Faraday.post('https://nps-projectfour.herokuapp.com/nps') do |req|
#     end
#     park_search
#   end

# def park_search
#     @search = Faraday.get('https://developer.nps.gov/api/v1/parks?&api_key=cdgjmt09KDFy4NRLi7OqQ02jhN37uSne53dnzURZ') do |req|
#     end
#     @search_result = JSON.parse(@search.body)
#     render json: @search_result
#   end

  # GET /parks
  def index
    @parks = Park.all
    
    render json: @parks
  end

  # GET /parks/1
  def show
    render json: @park
  end

  # POST /parks
  def create
    @park = Park.new(park_params)

    if @park.save
      render json: @park, status: :created, location: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parks/1
  def update
    if @park.update(park_params)
      render json: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parks/1
  def destroy
    @park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park
      @park = Park.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def park_params
      params.require(:park).permit(:fullname, :city, :statecode, :hours, :url)
    end
end
