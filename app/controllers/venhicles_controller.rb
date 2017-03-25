class VenhiclesController < ApplicationController
  before_action :set_venhicle, only: [:show, :update, :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  # GET /venhicles
  def index
    @venhicles = Venhicle.all

    render json: @venhicles
  end

  # GET /venhicles/1
  def show
    render json: @venhicle
  end

  # POST /venhicles
  def create
    @venhicle = Venhicle.new(venhicle_params)

    if @venhicle.save
      render json: @venhicle, status: :created, location: @venhicle
    else
      render json: @venhicle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /venhicles/1
  def update
    if @venhicle.update(venhicle_params)
      render json: @venhicle
    else
      render json: @venhicle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /venhicles/1
  def destroy
    @venhicle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venhicle
      @venhicle = Venhicle.find_by!(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def venhicle_params
      params.require(:venhicle).permit(:kind, :brand, :model, :year, :price)
    end
end
