class AirplanesController < ApplicationController
  before_action :set_airplane, only: [:show, :edit, :update, :destroy]

  # GET /airplanes
  def index
    @airplanes = Airplane.all
  end

  # GET /airplanes/1
  def show
  end

  # GET /airplanes/new
  def new
    @airplane = Airplane.new
  end

  # GET /airplanes/1/edit
  def edit
  end

  # POST /airplanes
  def create
    @airplane = Airplane.new(airplane_params)

    if @airplane.save
      redirect_to @airplane, notice: 'Airplane was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /airplanes/1
  def update
    if @airplane.update(airplane_params)
      redirect_to @airplane, notice: 'Airplane was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /airplanes/1
  def destroy
    @airplane.destroy
    redirect_to airplanes_url, notice: 'Airplane was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airplane
      @airplane = Airplane.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def airplane_params
      params.require(:airplane).permit(:name)
    end
end
