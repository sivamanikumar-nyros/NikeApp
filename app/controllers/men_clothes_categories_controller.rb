class MenClothesCategoriesController < ApplicationController
  before_action :set_men_clothes_category, only: [:show, :edit, :update, :destroy]

  # GET /men_clothes_categories
  # GET /men_clothes_categories.json
  def index
    @men_clothes_categories = MenClothesCategory.all
    
  end

  # GET /men_clothes_categories/1
  # GET /men_clothes_categories/1.json
  def show
    # @men_clothes_categories = MenClothe.where(:men_clothes_category_id =>1).all
  end

  # GET /men_clothes_categories/new
  def new
    @men_clothes_category = MenClothesCategory.new
  end

  # GET /men_clothes_categories/1/edit
  def edit
  end

  # POST /men_clothes_categories
  # POST /men_clothes_categories.json
  def create
    @men_clothes_category = MenClothesCategory.new(men_clothes_category_params)

    respond_to do |format|
      if @men_clothes_category.save
        format.html { redirect_to @men_clothes_category, notice: 'Men clothes category was successfully created.' }
        format.json { render :show, status: :created, location: @men_clothes_category }
      else
        format.html { render :new }
        format.json { render json: @men_clothes_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_clothes_categories/1
  # PATCH/PUT /men_clothes_categories/1.json
  def update
    respond_to do |format|
      if @men_clothes_category.update(men_clothes_category_params)
        format.html { redirect_to @men_clothes_category, notice: 'Men clothes category was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_clothes_category }
      else
        format.html { render :edit }
        format.json { render json: @men_clothes_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_clothes_categories/1
  # DELETE /men_clothes_categories/1.json
  def destroy
    @men_clothes_category.destroy
    respond_to do |format|
      format.html { redirect_to men_clothes_categories_url, notice: 'Men clothes category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_clothes_category
      @men_clothes_category = MenClothesCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_clothes_category_params
      params.require(:men_clothes_category).permit(:name)
    end
end
