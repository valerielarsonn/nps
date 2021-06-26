class NpsController < ApplicationController
  before_action :set_np, only: [:show, :update, :destroy]

  # GET /nps
  def index
    @nps = Np.all

    render json: @nps
  end

  # GET /nps/1
  def show
    render json: @np
  end

  # POST /nps
  def create
    @np = Np.new(np_params)

    if @np.save
      render json: @np, status: :created, location: @np
    else
      render json: @np.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nps/1
  def update
    if @np.update(np_params)
      render json: @np
    else
      render json: @np.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nps/1
  def destroy
    @np.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_np
      @np = Np.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def np_params
      params.require(:np).permit(:name, :posting, :image)
    end
end
