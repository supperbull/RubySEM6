class KatalogsController < ApplicationController

  before_filter :authorize

  before_action :set_katalog, only: [:show, :edit, :update, :destroy]

  # GET /katalogs
  # GET /katalogs.json
  def index
        @katalogs = Katalog.all
        @q = Katalog.ransack(params[:q])
        @websites = @q.result(distinct: true)
  end

  # GET /katalogs/1
  # GET /katalogs/1.json
  def show
  end

  # GET /katalogs/new
  def new
    @katalog = Katalog.new
  end

  # GET /katalogs/1/edit
  def edit
  end

  # POST /katalogs
  # POST /katalogs.json
  def create
    @katalog = Katalog.new(katalog_params)

    respond_to do |format|
      if @katalog.save
        format.html { redirect_to @katalog, notice: 'Katalog was successfully created.' }
        format.json { render :show, status: :created, location: @katalog }
      else
        format.html { render :new }
        format.json { render json: @katalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /katalogs/1
  # PATCH/PUT /katalogs/1.json
  def update
    respond_to do |format|
      if @katalog.update(katalog_params)
        format.html { redirect_to @katalog, notice: 'Katalog was successfully updated.' }
        format.json { render :show, status: :ok, location: @katalog }
      else
        format.html { render :edit }
        format.json { render json: @katalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /katalogs/1
  # DELETE /katalogs/1.json
  def destroy
    @katalog.destroy
    respond_to do |format|
      format.html { redirect_to katalogs_url, notice: 'Katalog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_katalog
      @katalog = Katalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def katalog_params
      params.require(:katalog).permit(:nazwa, :opis, :url)
    end
end
