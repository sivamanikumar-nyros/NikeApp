class MenShoeCategoriesController < ApplicationController
  before_action :set_men_shoe_category, only: [:show, :edit, :update, :destroy]

  # GET /men_shoe_categories
  # GET /men_shoe_categories.json
  def index
    @men_shoe_categories = MenShoeCategory.all
  end

  # GET /men_shoe_categories/1
  # GET /men_shoe_categories/1.json
  def show
  end

  # GET /men_shoe_categories/new
  def new
    @men_shoe_category = MenShoeCategory.new
  end

  # GET /men_shoe_categories/1/edit
  def edit
  end

  # POST /men_shoe_categories
  # POST /men_shoe_categories.json
  def create
    @men_shoe_category = MenShoeCategory.new(men_shoe_category_params)

    respond_to do |format|
      if @men_shoe_category.save
        format.html { redirect_to @men_shoe_category, notice: 'Men shoe category was successfully created.' }
        format.json { render :show, status: :created, location: @men_shoe_category }
      else
        format.html { render :new }
        format.json { render json: @men_shoe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_shoe_categories/1
  # PATCH/PUT /men_shoe_categories/1.json
  def update
    respond_to do |format|
      if @men_shoe_category.update(men_shoe_category_params)
        format.html { redirect_to @men_shoe_category, notice: 'Men shoe category was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_shoe_category }
      else
        format.html { render :edit }
        format.json { render json: @men_shoe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_shoe_categories/1
  # DELETE /men_shoe_categories/1.json
  def destroy
    @men_shoe_category.destroy
    respond_to do |format|
      format.html { redirect_to men_shoe_categories_url, notice: 'Men shoe category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_shoe_category
      @men_shoe_category = MenShoeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_shoe_category_params
      params.require(:men_shoe_category).permit(:name)
    end
end
