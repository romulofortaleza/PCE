class DocumentRegistersController < ApplicationController
  before_action :set_document_register, only: [:show, :edit, :update, :destroy]

  # GET /document_registers
  # GET /document_registers.json
  def index
    @document_registers = DocumentRegister.all
  end

  # GET /document_registers/1
  # GET /document_registers/1.json
  def show
  end

  # GET /document_registers/new
  def new
    @document_register = DocumentRegister.new
  end

  # GET /document_registers/1/edit
  def edit
  end

  # POST /document_registers
  # POST /document_registers.json
  def create
    @document_register = DocumentRegister.new(document_register_params)

    respond_to do |format|
      if @document_register.save
        format.html { redirect_to @document_register, notice: 'Document register was successfully created.' }
        format.json { render :show, status: :created, location: @document_register }
      else
        format.html { render :new }
        format.json { render json: @document_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_registers/1
  # PATCH/PUT /document_registers/1.json
  def update
    respond_to do |format|
      if @document_register.update(document_register_params)
        format.html { redirect_to @document_register, notice: 'Document register was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_register }
      else
        format.html { render :edit }
        format.json { render json: @document_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_registers/1
  # DELETE /document_registers/1.json
  def destroy
    @document_register.destroy
    respond_to do |format|
      format.html { redirect_to document_registers_url, notice: 'Document register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_register
      @document_register = DocumentRegister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_register_params
      params.require(:document_register).permit(:name, :instrument_registrations_id, :document_file)
    end
end
