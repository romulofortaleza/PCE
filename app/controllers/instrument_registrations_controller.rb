class InstrumentRegistrationsController < ApplicationController
  before_action :set_instrument_registration, only: [:show, :edit, :update, :destroy]

  # GET /instrument_registrations
  # GET /instrument_registrations.json
  def index
    @instrument_registrations = InstrumentRegistration.all
  end

  # GET /instrument_registrations/1
  # GET /instrument_registrations/1.json
  def show
  end

  # GET /instrument_registrations/new
  def new
    @instrument_registration = InstrumentRegistration.new
  end

  # GET /instrument_registrations/1/edit
  def edit
  end

  # POST /instrument_registrations
  # POST /instrument_registrations.json
  def create
    @instrument_registration = InstrumentRegistration.new(instrument_registration_params)

    respond_to do |format|
      if @instrument_registration.save
        format.html { redirect_to @instrument_registration, notice: 'Instrument registration was successfully created.' }
        format.json { render :show, status: :created, location: @instrument_registration }
      else
        format.html { render :new }
        format.json { render json: @instrument_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instrument_registrations/1
  # PATCH/PUT /instrument_registrations/1.json
  def update
    respond_to do |format|
      if @instrument_registration.update(instrument_registration_params)
        format.html { redirect_to @instrument_registration, notice: 'Instrument registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @instrument_registration }
      else
        format.html { render :edit }
        format.json { render json: @instrument_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instrument_registrations/1
  # DELETE /instrument_registrations/1.json
  def destroy
    @instrument_registration.destroy
    respond_to do |format|
      format.html { redirect_to instrument_registrations_url, notice: 'Instrument registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument_registration
      @instrument_registration = InstrumentRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrument_registration_params
      params.require(:instrument_registration).permit(:instrument_number, :internal_number, :extra_number, :object_agreement, :granting_organ, :linked_organ, :existence_im, :instituition_name, :value_transfer, :counterpart_value, :total, :signature_date, :end_date, :suspensive_date, :type, :address, :open_date, :organ, :user, :signature)
    end
end
