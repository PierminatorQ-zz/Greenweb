class LightitemsController < ApplicationController
  before_action :set_lightitem, only: [:show, :edit, :update, :destroy]
  before_action :delete_category, only: [:update]
  
 

  # GET /lightitems
  # GET /lightitems.json
  

  
  
  def index
    if signed_in?
      @lightitems = Lightitem.order(created_at: :desc).page(params[:page])
    else
      @lightitems = Lightitem.active.order(created_at: :desc).page(params[:page])
    end
  end



  
  # GET /lightitems/1
  # GET /lightitems/1.json
  def show
    @listado= Lightitem.joins(:categories).where(categories: {id: 1})
  end

  # GET /lightitems/new
  def new
    @lightitem = Lightitem.new
    #@lightitem.categories.build
    @categories= @lightitem.producats.build
    
  end

  # GET /lightitems/1/edit
  def edit
  end

  # POST /lightitems
  # POST /lightitems.json
  def create
    @lightitem = Lightitem.new(lightitem_params)

    respond_to do |format|
      if @lightitem.save
        
        format.html { redirect_to @lightitem, notice: 'Lightitem was successfully created.' }
        format.json { render :show, status: :created, location: @lightitem }
      else
        format.html { render :new }
        format.json { render json: @lightitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lightitems/1
  # PATCH/PUT /lightitems/1.json
  def update
    respond_to do |format|
      if @lightitem.update(lightitem_params)
        
        format.html { redirect_to @lightitem, notice: 'Lightitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @lightitem }
      else
        format.html { render :edit }
        format.json { render json: @lightitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lightitems/1
  # DELETE /lightitems/1.json
  def destroy
    @lightitem.destroy
    respond_to do |format|
      format.html { redirect_to lightitems_url, notice: 'Lightitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lightitem
      @lightitem = Lightitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lightitem_params
      params.require(:lightitem).permit(:name, :description, :brand, :power, :flux, :voltage, :status, :useful_life, :ip_protection, :color_temp, :additionals, producats_attributes: [:category_id, :name], photos: [] )
    end

    def delete_category
      @category = Producat.where(lightitem: @lightitem.id).first
      @category.destroy
    end
end
