class MenShopCollectionCategoriesController < ApplicationController
  before_action :set_men_shop_collection_category, only: [:show, :edit, :update, :destroy]

  # GET /men_shop_collection_categories
  # GET /men_shop_collection_categories.json
  def index
    @men_shop_collection_categories = MenShopCollectionCategory.all
  end

  # GET /men_shop_collection_categories/1
  # GET /men_shop_collection_categories/1.json
  def show
  end

  # GET /men_shop_collection_categories/new
  def new
    @men_shop_collection_category = MenShopCollectionCategory.new
  end

  # GET /men_shop_collection_categories/1/edit
  def edit
  end

  # POST /men_shop_collection_categories
  # POST /men_shop_collection_categories.json
  def create
    @men_shop_collection_category = MenShopCollectionCategory.new(men_shop_collection_category_params)

    respond_to do |format|
      if @men_shop_collection_category.save
        format.html { redirect_to @men_shop_collection_category, notice: 'Men shop collection category was successfully created.' }
        format.json { render :show, status: :created, location: @men_shop_collection_category }
      else
        format.html { render :new }
        format.json { render json: @men_shop_collection_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_shop_collection_categories/1
  # PATCH/PUT /men_shop_collection_categories/1.json
  def update
    respond_to do |format|
      if @men_shop_collection_category.update(men_shop_collection_category_params)
        format.html { redirect_to @men_shop_collection_category, notice: 'Men shop collection category was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_shop_collection_category }
      else
        format.html { render :edit }
        format.json { render json: @men_shop_collection_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_shop_collection_categories/1
  # DELETE /men_shop_collection_categories/1.json
  def destroy
    @men_shop_collection_category.destroy
    respond_to do |format|
      format.html { redirect_to men_shop_collection_categories_url, notice: 'Men shop collection category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_shop_collection_category
      @men_shop_collection_category = MenShopCollectionCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_shop_collection_category_params
      params.require(:men_shop_collection_category).permit(:name)
    end
end
