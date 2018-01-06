class BannedsController < ApplicationController
  before_action :set_banned, only: [:show, :edit, :update, :destroy]

  # GET /banneds
  # GET /banneds.json
  def index
    @banneds = Banned.all
  end

  # GET /banneds/1
  # GET /banneds/1.json
  def show
  end

  # GET /banneds/new
  def new
    @banned = Banned.new
  end

  # GET /banneds/1/edit
  def edit
  end

  # POST /banneds
  # POST /banneds.json
  def create
    @banned = Banned.new(banned_params)

    respond_to do |format|
      if @banned.save
        format.html { redirect_to @banned, notice: 'Banned was successfully created.' }
        format.json { render :show, status: :created, location: @banned }
      else
        format.html { render :new }
        format.json { render json: @banned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banneds/1
  # PATCH/PUT /banneds/1.json
  def update
    respond_to do |format|
      if @banned.update(banned_params)
        format.html { redirect_to @banned, notice: 'Banned was successfully updated.' }
        format.json { render :show, status: :ok, location: @banned }
      else
        format.html { render :edit }
        format.json { render json: @banned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banneds/1
  # DELETE /banneds/1.json
  def destroy
    @banned.destroy
    respond_to do |format|
      format.html { redirect_to banneds_url, notice: 'Banned was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banned
      @banned = Banned.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banned_params
      params.require(:banned).permit(:email, :msg, :reason)
    end
end
