class BusinessAlertsController < ApplicationController
  before_action :set_business_alert, only: [:show, :edit, :update, :destroy]

  # GET /business_alerts
  # GET /business_alerts.json
  def index
    @business_alerts = BusinessAlert.all
  end

  # GET /business_alerts/1
  # GET /business_alerts/1.json
  def show
  end

  # GET /business_alerts/new
  def new
    @business_alert = BusinessAlert.new
  end

  # GET /business_alerts/1/edit
  def edit
  end

  # POST /business_alerts
  # POST /business_alerts.json
  def create
    @business_alert = BusinessAlert.new(business_alert_params)

    respond_to do |format|
      if @business_alert.save
        format.html { redirect_to @business_alert, notice: 'Business alert was successfully created.' }
        format.json { render action: 'show', status: :created, location: @business_alert }
      else
        format.html { render action: 'new' }
        format.json { render json: @business_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_alerts/1
  # PATCH/PUT /business_alerts/1.json
  def update
    respond_to do |format|
      if @business_alert.update(business_alert_params)
        format.html { redirect_to @business_alert, notice: 'Business alert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @business_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_alerts/1
  # DELETE /business_alerts/1.json
  def destroy
    @business_alert.destroy
    respond_to do |format|
      format.html { redirect_to business_alerts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_alert
      @business_alert = BusinessAlert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_alert_params
      params.require(:business_alert).permit(:date, :title, :detail)
    end
end
