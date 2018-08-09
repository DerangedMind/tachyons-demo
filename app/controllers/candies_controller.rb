class CandiesController < ApplicationController
  before_action :set_candy, only: [:show, :edit, :update, :destroy]

  def index
    @candies = Candy.all
  end

  def modal
  end

  def test
  end

  def show
  end

  def new
    @candy = Candy.new
  end

  def edit
  end

  def create
    @candy = Candy.new(candy_params)

    respond_to do |format|
      if @candy.save
        format.html { redirect_to @candy, notice: 'Candy was successfully created.' }
        format.json { render :show, status: :created, location: @candy }
      else
        format.html { render :new }
        format.json { render json: @candy.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @candy.update(candy_params)
        format.html { redirect_to @candy, notice: 'Candy was successfully updated.' }
        format.json { render :show, status: :ok, location: @candy }
      else
        format.html { render :edit }
        format.json { render json: @candy.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @candy.destroy
    respond_to do |format|
      format.html { redirect_to candies_url, notice: 'Candy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_candy
      @candy = Candy.find(params[:id])
    end

    def candy_params
      params.require(:candy).permit(:name, :description)
    end
end
