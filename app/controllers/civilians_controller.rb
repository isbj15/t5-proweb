class CiviliansController < ApplicationController
  before_action :set_civilian, only: [:show, :edit, :update, :destroy]
  
  # GET /civilians
  # GET /civilians.json
  def index
    @civilians = Civilian.all
  end

  # GET /civilians/1
  # GET /civilians/1.json
  def show
  end

  # GET /civilians/new
  def new
    @civilian = Civilian.new
  end

  # GET /civilians/1/edit
  def edit
  end

  # POST /civilians
  # POST /civilians.json
  def create
    @civilian = Civilian.new(civilian_params)

    respond_to do |format|
      if @civilian.save
        format.html { redirect_to @civilian, notice: 'Civilian was successfully created.' }
        format.json { render :show, status: :created, location: @civilian }
      else
        format.html { render :new }
        format.json { render json: @civilian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civilians/1
  # PATCH/PUT /civilians/1.json
  def update
    respond_to do |format|
      if @civilian.update(civilian_params)
        format.html { redirect_to @civilian, notice: 'Civilian was successfully updated.' }
        format.json { render :show, status: :ok, location: @civilian }
      else
        format.html { render :edit }
        format.json { render json: @civilian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civilians/1
  # DELETE /civilians/1.json
  def destroy
    @civilian.destroy
    respond_to do |format|
      format.html { redirect_to civilians_url, notice: 'Civilian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civilian
      @civilian = Civilian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civilian_params
      params.require(:civilian).permit(:first_name, :last_name, :address, :city)
    end
end
