class SolaritemsController < ApplicationController
  before_action :set_solaritem, only: [:show, :edit, :update, :destroy]
  before_action :delete_category, only: [:update]
  

  # GET /solaritems
  # GET /solaritems.json
  def index
    @solaritems = Solaritem.all
  end

  # GET /solaritems/1
  # GET /solaritems/1.json
  def show
    @listado= Solaritem.joins(:categories).where(categories: {id:2})
  end

  # GET /solaritems/new
  def new
    @solaritem = Solaritem.new
    @categories= @solaritem.producats.build
  end

  # GET /solaritems/1/edit
  def edit
  end

  # POST /solaritems
  # POST /solaritems.json
  def create
    @solaritem = Solaritem.new(solaritem_params)

    respond_to do |format|
      if @solaritem.save
        format.html { redirect_to @solaritem, notice: 'Solaritem was successfully created.' }
        format.json { render :show, status: :created, location: @solaritem }
      else
        format.html { render :new }
        format.json { render json: @solaritem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solaritems/1
  # PATCH/PUT /solaritems/1.json
  def update
    respond_to do |format|
      if @solaritem.update(solaritem_params)
        format.html { redirect_to @solaritem, notice: 'Solaritem was successfully updated.' }
        format.json { render :show, status: :ok, location: @solaritem }
      else
        format.html { render :edit }
        format.json { render json: @solaritem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solaritems/1
  # DELETE /solaritems/1.json
  def destroy
    @solaritem.destroy
    respond_to do |format|
      format.html { redirect_to solaritems_url, notice: 'Solaritem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solaritem
      @solaritem = Solaritem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def solaritem_params
      params.require(:solaritem).permit(:name, :description, :brand, :peak_power, :flux, :voltage_work, :status, :voc, :isc, :efficiency, :battery,  :additionals, producats_attributes: [:category_id, :name], photos: [])
    end

    def delete_category
      @category = Producat.where(solaritem: @solaritem.id).first
      @category.destroy
    end
end
