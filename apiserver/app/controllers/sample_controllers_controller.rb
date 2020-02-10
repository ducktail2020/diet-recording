class SampleControllersController < ApplicationController
  before_action :set_sample_controller, only: [:show, :update, :destroy]

  # GET /sample_controllers
  def index
    @sample_controllers = SampleController.all

    render json: @sample_controllers
  end

  # GET /sample_controllers/1
  def show
    render json: @sample_controller
  end

  # POST /sample_controllers
  def create
    @sample_controller = SampleController.new(sample_controller_params)

    if @sample_controller.save
      render json: @sample_controller, status: :created, location: @sample_controller
    else
      render json: @sample_controller.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sample_controllers/1
  def update
    if @sample_controller.update(sample_controller_params)
      render json: @sample_controller
    else
      render json: @sample_controller.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sample_controllers/1
  def destroy
    @sample_controller.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_controller
      @sample_controller = SampleController.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sample_controller_params
      params.fetch(:sample_controller, {})
    end
end
