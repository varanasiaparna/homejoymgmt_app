class HomejoymsController < ApplicationController
  before_action :set_homejoym, only: [:show, :edit, :update, :destroy]

  # GET /homejoyms
  # GET /homejoyms.json
  def index
    @homejoyms = Homejoym.all
  end

  # GET /homejoyms/1
  # GET /homejoyms/1.json
  def show
  end

  # GET /homejoyms/new
  def new
    @homejoym = Homejoym.new
  end

  # GET /homejoyms/1/edit
  def edit
  end

  # POST /homejoyms
  # POST /homejoyms.json
  def create
    @homejoym = Homejoym.new(homejoym_params)

    respond_to do |format|
      if @homejoym.save
        format.html { redirect_to @homejoym, notice: 'Homejoym was successfully created.' }
        format.json { render :show, status: :created, location: @homejoym }
      else
        format.html { render :new }
        format.json { render json: @homejoym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homejoyms/1
  # PATCH/PUT /homejoyms/1.json
  def update
    respond_to do |format|
      if @homejoym.update(homejoym_params)
        format.html { redirect_to @homejoym, notice: 'Homejoym was successfully updated.' }
        format.json { render :show, status: :ok, location: @homejoym }
      else
        format.html { render :edit }
        format.json { render json: @homejoym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homejoyms/1
  # DELETE /homejoyms/1.json
  def destroy
    @homejoym.destroy
    respond_to do |format|
      format.html { redirect_to homejoyms_url, notice: 'Homejoym was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homejoym
      @homejoym = Homejoym.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homejoym_params
      params.require(:homejoym).permit(:selectservice, :payment, :address, :numofworkers, :packages, :ratecard)
    end
end
