class MenAccessoriesCategoriesController < ApplicationController
  before_action :set_men_accessories_category, only: [:show, :edit, :update, :destroy]

  # GET /men_accessories_categories
  # GET /men_accessories_categories.json
  def index
    @men_accessories_categories = MenAccessoriesCategory.all
    @men_clothes_categories = MenClothesCategory.all
    @men_shoe_categories = MenShoeCategory.all
  end

  # GET /men_accessories_categories/1
  # GET /men_accessories_categories/1.json
  def show
  end

  # GET /men_accessories_categories/new
  def new
    @men_accessories_category = MenAccessoriesCategory.new
  end

  # GET /men_accessories_categories/1/edit
  def edit
  end

  # POST /men_accessories_categories
  # POST /men_accessories_categories.json
  def create
    @men_accessories_category = MenAccessoriesCategory.new(men_accessories_category_params)

    respond_to do |format|
      if @men_accessories_category.save
        format.html { redirect_to @men_accessories_category, notice: 'Men accessories category was successfully created.' }
        format.json { render :show, status: :created, location: @men_accessories_category }
      else
        format.html { render :new }
        format.json { render json: @men_accessories_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_accessories_categories/1
  # PATCH/PUT /men_accessories_categories/1.json
  def update
    respond_to do |format|
      if @men_accessories_category.update(men_accessories_category_params)
        format.html { redirect_to @men_accessories_category, notice: 'Men accessories category was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_accessories_category }
      else
        format.html { render :edit }
        format.json { render json: @men_accessories_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_accessories_categories/1
  # DELETE /men_accessories_categories/1.json
  def destroy
    @men_accessories_category.destroy
    respond_to do |format|
      format.html { redirect_to men_accessories_categories_url, notice: 'Men accessories category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_accessories_category
      @men_accessories_category = MenAccessoriesCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_accessories_category_params
      params.require(:men_accessories_category).permit(:name)
    end
end
