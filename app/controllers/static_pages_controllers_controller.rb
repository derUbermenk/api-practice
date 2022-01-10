class StaticPagesControllersController < ApplicationController
  before_action :set_static_pages_controller, only: %i[ show edit update destroy ]

  # GET /static_pages_controllers or /static_pages_controllers.json
  def index
    @static_pages_controllers = StaticPagesController.all
  end

  # GET /static_pages_controllers/1 or /static_pages_controllers/1.json
  def show
  end

  # GET /static_pages_controllers/new
  def new
    @static_pages_controller = StaticPagesController.new
  end

  # GET /static_pages_controllers/1/edit
  def edit
  end

  # POST /static_pages_controllers or /static_pages_controllers.json
  def create
    @static_pages_controller = StaticPagesController.new(static_pages_controller_params)

    respond_to do |format|
      if @static_pages_controller.save
        format.html { redirect_to static_pages_controller_url(@static_pages_controller), notice: "Static pages controller was successfully created." }
        format.json { render :show, status: :created, location: @static_pages_controller }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @static_pages_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /static_pages_controllers/1 or /static_pages_controllers/1.json
  def update
    respond_to do |format|
      if @static_pages_controller.update(static_pages_controller_params)
        format.html { redirect_to static_pages_controller_url(@static_pages_controller), notice: "Static pages controller was successfully updated." }
        format.json { render :show, status: :ok, location: @static_pages_controller }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @static_pages_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /static_pages_controllers/1 or /static_pages_controllers/1.json
  def destroy
    @static_pages_controller.destroy

    respond_to do |format|
      format.html { redirect_to static_pages_controllers_url, notice: "Static pages controller was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static_pages_controller
      @static_pages_controller = StaticPagesController.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def static_pages_controller_params
      params.fetch(:static_pages_controller, {})
    end
end
