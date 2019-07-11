class MenShoesController < ApplicationController
  before_action :set_men_shoe, only: [:show, :edit, :update, :destroy]

  # GET /men_shoes
  # GET /men_shoes.json
  def index
    # puts '-------------------------------------'
    puts params.inspect
    puts '-------------------------------------'
    @men_shoes = if params[:term]
      MenShoe.where('name LIKE ?',"%#{params[:term]}%")
    else
      MenShoe.all
    end
    @men_shoes = MenShoe.where(:men_shoe_category_id => params[:category_id]).all if params[:category_id]
  end

  # GET /men_shoes/1
  # GET /men_shoes/1.json
  def show
  end

  # GET /men_shoes/new
  def new
    @men_shoe = MenShoe.new
  end

  # GET /men_shoes/1/edit
  def edit
  end

  # POST /men_shoes
  # POST /men_shoes.json
  def create
    @men_shoe = MenShoe.new(men_shoe_params)

    respond_to do |format|
      if @men_shoe.save
        format.html { redirect_to @men_shoe, notice: 'Men shoe was successfully created.' }
        format.json { render :show, status: :created, location: @men_shoe }
      else
        format.html { render :new }
        format.json { render json: @men_shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_shoes/1
  # PATCH/PUT /men_shoes/1.json
  def update
    respond_to do |format|
      if @men_shoe.update(men_shoe_params)
        format.html { redirect_to @men_shoe, notice: 'Men shoe was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_shoe }
      else
        format.html { render :edit }
        format.json { render json: @men_shoe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_shoes/1
  # DELETE /men_shoes/1.json
  def destroy
    @men_shoe.destroy
    respond_to do |format|
      format.html { redirect_to men_shoes_url, notice: 'Men shoe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_shoe
      @men_shoe = MenShoe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_shoe_params
      params.require(:men_shoe).permit(:name, :price, :men_shoe_category_id,:image)
    end
end
