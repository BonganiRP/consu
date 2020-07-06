class NavigsController < ApplicationController
  before_action :set_navig, only: [:show, :edit, :update, :destroy]

  # GET /navigs
  # GET /navigs.json
  def index
    @navigs = Navig.all
  end

  def home
    random_name = ['Richard', 'Tints', 'Bongumusa']
    @name = random_name.sample
    @time = Time.now
  end

  # GET /navigs/1
  # GET /navigs/1.json
  def show
  end

  # GET /navigs/new
  def new
    @navig = Navig.new
  end

  # GET /navigs/1/edit
  def edit
  end

  # POST /navigs
  # POST /navigs.json
  def create
    @navig = Navig.new(navig_params)

    respond_to do |format|
      if @navig.save
        format.html { redirect_to @navig, notice: 'Navig was successfully created.' }
        format.json { render :show, status: :created, location: @navig }
      else
        format.html { render :new }
        format.json { render json: @navig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navigs/1
  # PATCH/PUT /navigs/1.json
  def update
    respond_to do |format|
      if @navig.update(navig_params)
        format.html { redirect_to @navig, notice: 'Navig was successfully updated.' }
        format.json { render :show, status: :ok, location: @navig }
      else
        format.html { render :edit }
        format.json { render json: @navig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navigs/1
  # DELETE /navigs/1.json
  def destroy
    @navig.destroy
    respond_to do |format|
      format.html { redirect_to navigs_url, notice: 'Navig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_navig
      @navig = Navig.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def navig_params
      params.require(:navig).permit(:home)
    end
end
