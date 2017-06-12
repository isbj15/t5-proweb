class CivilianInterestsController < ApplicationController
  before_action :set_civilian_interest, only: [:show, :edit, :update, :destroy]

  # GET /civilian_interests
  # GET /civilian_interests.json
  def index
    @civilian_interests = CivilianInterest.all
  end

  # GET /civilian_interests/1
  # GET /civilian_interests/1.json
  def show
  end

  # GET /civilian_interests/new
  def new
    @civilian_interest = CivilianInterest.new
  end

  # GET /civilian_interests/1/edit
  def edit
  end

  # POST /civilian_interests
  # POST /civilian_interests.json
  def create
    @civilian_interest = CivilianInterest.new(civilian_interest_params)

    respond_to do |format|
      if @civilian_interest.save
        format.html { redirect_to @civilian_interest, notice: 'Civilian interest was successfully created.' }
        format.json { render :show, status: :created, location: @civilian_interest }
      else
        format.html { render :new }
        format.json { render json: @civilian_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civilian_interests/1
  # PATCH/PUT /civilian_interests/1.json
  def update
    respond_to do |format|
      if @civilian_interest.update(civilian_interest_params)
        format.html { redirect_to @civilian_interest, notice: 'Civilian interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @civilian_interest }
      else
        format.html { render :edit }
        format.json { render json: @civilian_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civilian_interests/1
  # DELETE /civilian_interests/1.json
  def destroy
    @civilian_interest.destroy
    respond_to do |format|
      format.html { redirect_to civilian_interests_url, notice: 'Civilian interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civilian_interest
      @civilian_interest = CivilianInterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civilian_interest_params
      params.require(:civilian_interest).permit(:civilian_id, :interest_id)
    end
end
