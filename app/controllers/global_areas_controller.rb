class GlobalAreasController < ApplicationController
  before_action :set_global_area, only: %i[ show edit update destroy ]

  # GET /global_areas or /global_areas.json
  def index
    @global_areas = GlobalArea.all
  end

  # GET /global_areas/1 or /global_areas/1.json
  def show
  end

  # GET /global_areas/new
  def new
    @global_area = GlobalArea.new
  end

  # GET /global_areas/1/edit
  def edit
  end

  # POST /global_areas or /global_areas.json
  def create
    @global_area = GlobalArea.new(global_area_params)

    respond_to do |format|
      if @global_area.save
        format.html { redirect_to @global_area, notice: "Global area was successfully created." }
        format.json { render :show, status: :created, location: @global_area }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @global_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /global_areas/1 or /global_areas/1.json
  def update
    respond_to do |format|
      if @global_area.update(global_area_params)
        format.html { redirect_to @global_area, notice: "Global area was successfully updated." }
        format.json { render :show, status: :ok, location: @global_area }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @global_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /global_areas/1 or /global_areas/1.json
  def destroy
    @global_area.destroy
    respond_to do |format|
      format.html { redirect_to global_areas_url, notice: "Global area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_area
      @global_area = GlobalArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def global_area_params
      params.require(:global_area).permit(:name, :active, :description)
    end
end
