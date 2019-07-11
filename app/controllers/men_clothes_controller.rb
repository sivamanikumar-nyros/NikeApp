class MenClothesController < ApplicationController
  before_action :set_men_clothe, only: [:show, :edit, :update, :destroy]

  # GET /men_clothes
  # GET /men_clothes.json
  def index
    puts '-------------------------------------'
    puts params.inspect
    puts '-------------------------------------'
    @men_clothes = if params[:term]
      MenClothe.where('name LIKE ?',"%#{params[:term]}%")
    else
      MenClothe.all
    end
    @men_clothes = MenClothe.where(:men_clothes_category_id => params[:category_id]).all if params[:category_id]
  end

  # GET /men_clothes/1
  # GET /men_clothes/1.json
  def show
  end

  # GET /men_clothes/new
  def new
    @men_clothe = MenClothe.new
  end

  # GET /men_clothes/1/edit
  def edit
  end

  # POST /men_clothes
  # POST /men_clothes.json
  def create
    @men_clothe = MenClothe.new(men_clothe_params)

    respond_to do |format|
      if @men_clothe.save
        format.html { redirect_to @men_clothe, notice: 'Men clothe was successfully created.' }
        format.json { render :show, status: :created, location: @men_clothe }
      else
        format.html { render :new }
        format.json { render json: @men_clothe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_clothes/1
  # PATCH/PUT /men_clothes/1.json
  def update
    respond_to do |format|
      if @men_clothe.update(men_clothe_params)
        format.html { redirect_to @men_clothe, notice: 'Men clothe was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_clothe }
      else
        format.html { render :edit }
        format.json { render json: @men_clothe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_clothes/1
  # DELETE /men_clothes/1.json
  def destroy
    @men_clothe.destroy
    respond_to do |format|
      format.html { redirect_to men_clothes_url, notice: 'Men clothe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_clothe
      @men_clothe = MenClothe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_clothe_params
      params.require(:men_clothe).permit(:name, :price, :men_clothes_category_id)
    end
end
