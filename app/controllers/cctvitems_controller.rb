class CctvitemsController < ApplicationController
  before_action :set_cctvitem, only: [:show, :edit, :update, :destroy]
  before_action :delete_category, only: [:update]
  

  # GET /cctvitems
  # GET /cctvitems.json
  def index
    @cctvitems = Cctvitem.all
  end

  # GET /cctvitems/1
  # GET /cctvitems/1.json
  def show
    @listado= Cctvitem.joins(:categories).where(categories: {id: 3})
  end

  # GET /cctvitems/new
  def new
    @cctvitem = Cctvitem.new
    @categories= @cctvitem.producats.build
  end

  # GET /cctvitems/1/edit
  def edit
  end

  # POST /cctvitems
  # POST /cctvitems.json
  def create
    @cctvitem = Cctvitem.new(cctvitem_params)

    respond_to do |format|
      if @cctvitem.save
        format.html { redirect_to @cctvitem, notice: 'Cctvitem was successfully created.' }
        format.json { render :show, status: :created, location: @cctvitem }
      else
        format.html { render :new }
        format.json { render json: @cctvitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cctvitems/1
  # PATCH/PUT /cctvitems/1.json
  def update
    respond_to do |format|
      if @cctvitem.update(cctvitem_params)
        format.html { redirect_to @cctvitem, notice: 'Cctvitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @cctvitem }
      else
        format.html { render :edit }
        format.json { render json: @cctvitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cctvitems/1
  # DELETE /cctvitems/1.json
  def destroy
    @cctvitem.destroy
    respond_to do |format|
      format.html { redirect_to cctvitems_url, notice: 'Cctvitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cctvitem
      @cctvitem = Cctvitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cctvitem_params
      params.require(:cctvitem).permit(:name, :description, :brand, :status, :resolution, :type_of,  :channels, :max_channels_ip, :additionals, producats_attributes: [:category_id, :name], photos: [])
    end

    def delete_category
      @category = Producat.where(cctvitem: @cctvitem.id).first
      @category.destroy
    end
end
