class MenAccessoriesController < ApplicationController
  before_action :set_men_accessory, only: [:show, :edit, :update, :destroy]

  # GET /men_accessories
  # GET /men_accessories.json
  def index
    puts '-------------------------------------'
    puts params.inspect
    puts '-------------------------------------'
    @men_accessories = if params[:term]
      MenAccessory.where('name LIKE ?',"%#{params[:term]}%")
    else
      @men_accessories = MenAccessory.all
    end
    @men_accessories = MenAccessory.where(:men_accessories_category_id => params[:category_id]).all if params[:category_id]

  end

  # GET /men_accessories/1
  # GET /men_accessories/1.json
  def show
  end

  # GET /men_accessories/new
  def new
    @men_accessory = MenAccessory.new
  end

  # GET /men_accessories/1/edit
  def edit
  end

  # POST /men_accessories
  # POST /men_accessories.json
  def create
    @men_accessory = MenAccessory.new(men_accessory_params)

    respond_to do |format|
      if @men_accessory.save
        format.html { redirect_to @men_accessory, notice: 'Men accessory was successfully created.' }
        format.json { render :show, status: :created, location: @men_accessory }
      else
        format.html { render :new }
        format.json { render json: @men_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_accessories/1
  # PATCH/PUT /men_accessories/1.json
  def update
    respond_to do |format|
      if @men_accessory.update(men_accessory_params)
        format.html { redirect_to @men_accessory, notice: 'Men accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_accessory }
      else
        format.html { render :edit }
        format.json { render json: @men_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_accessories/1
  # DELETE /men_accessories/1.json
  def destroy
    @men_accessory.destroy
    respond_to do |format|
      format.html { redirect_to men_accessories_url, notice: 'Men accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_accessory
      @men_accessory = MenAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_accessory_params
      params.require(:men_accessory).permit(:name, :price, :men_accessories_category_id)
    end
end
