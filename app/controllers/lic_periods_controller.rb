class LicPeriodsController < ApplicationController
  before_action :set_lic_period, only: [:show, :edit, :update, :destroy]

  # GET /lic_periods
  # GET /lic_periods.json
  def index
    @lic_periods = LicPeriod.all
  end

  # GET /lic_periods/1
  # GET /lic_periods/1.json
  def show
  end

  # GET /lic_periods/new
  def new
    @lic_period = LicPeriod.new
  end

  # GET /lic_periods/1/edit
  def edit
  end

  # POST /lic_periods
  # POST /lic_periods.json
  def create
    @lic_period = LicPeriod.new(lic_period_params)

    respond_to do |format|
      if @lic_period.save
        format.html { redirect_to @lic_period, notice: 'Lic period was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lic_period }
      else
        format.html { render action: 'new' }
        format.json { render json: @lic_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lic_periods/1
  # PATCH/PUT /lic_periods/1.json
  def update
    respond_to do |format|
      if @lic_period.update(lic_period_params)
        format.html { redirect_to @lic_period, notice: 'Lic period was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lic_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lic_periods/1
  # DELETE /lic_periods/1.json
  def destroy
    @lic_period.destroy
    respond_to do |format|
      format.html { redirect_to lic_periods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lic_period
      @lic_period = LicPeriod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lic_period_params
      params.require(:lic_period).permit(:initial_date, :renewal_date, :state_id, :user_id, :credit_self_study_total, :credit_group_live_total, :credit_group_internet_total)
    end
end
