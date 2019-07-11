class MenShopCollectionsController < ApplicationController
  before_action :set_men_shop_collection, only: [:show, :edit, :update, :destroy]

  # GET /men_shop_collections
  # GET /men_shop_collections.json
  def index
    @men_shop_collections = MenShopCollection.all
  end

  # GET /men_shop_collections/1
  # GET /men_shop_collections/1.json
  def show
  end

  # GET /men_shop_collections/new
  def new
    @men_shop_collection = MenShopCollection.new
  end

  # GET /men_shop_collections/1/edit
  def edit
  end

  # POST /men_shop_collections
  # POST /men_shop_collections.json
  def create
    @men_shop_collection = MenShopCollection.new(men_shop_collection_params)

    respond_to do |format|
      if @men_shop_collection.save
        format.html { redirect_to @men_shop_collection, notice: 'Men shop collection was successfully created.' }
        format.json { render :show, status: :created, location: @men_shop_collection }
      else
        format.html { render :new }
        format.json { render json: @men_shop_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_shop_collections/1
  # PATCH/PUT /men_shop_collections/1.json
  def update
    respond_to do |format|
      if @men_shop_collection.update(men_shop_collection_params)
        format.html { redirect_to @men_shop_collection, notice: 'Men shop collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_shop_collection }
      else
        format.html { render :edit }
        format.json { render json: @men_shop_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_shop_collections/1
  # DELETE /men_shop_collections/1.json
  def destroy
    @men_shop_collection.destroy
    respond_to do |format|
      format.html { redirect_to men_shop_collections_url, notice: 'Men shop collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_shop_collection
      @men_shop_collection = MenShopCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_shop_collection_params
      params.require(:men_shop_collection).permit(:name, :price, :men_shop_collection_category_id)
    end
end
