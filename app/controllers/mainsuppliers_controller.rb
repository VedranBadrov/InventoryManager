class MainsuppliersController < ApplicationController
  before_action :set_mainsupplier, only: %i[ show edit update destroy ]
  before_action :authenticate_user! #, except: [:show, :edit, :update, :destroy]
  
  # GET /mainsuppliers or /mainsuppliers.json
  def index
    @mainsuppliers = Mainsupplier.all
  end

  # GET /mainsuppliers/1 or /mainsuppliers/1.json
  def show
  end

  # GET /mainsuppliers/new
  def new
    @mainsupplier = Mainsupplier.new
  end

  # GET /mainsuppliers/1/edit
  def edit
  end

  # POST /mainsuppliers or /mainsuppliers.json
  def create
    @mainsupplier = Mainsupplier.new(mainsupplier_params)

    respond_to do |format|
      if @mainsupplier.save
        format.html { redirect_to mainsupplier_url(@mainsupplier), notice: "Mainsupplier was successfully created." }
        format.json { render :show, status: :created, location: @mainsupplier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mainsupplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainsuppliers/1 or /mainsuppliers/1.json
  def update
    respond_to do |format|
      if @mainsupplier.update(mainsupplier_params)
        format.html { redirect_to mainsupplier_url(@mainsupplier), notice: "Mainsupplier was successfully updated." }
        format.json { render :show, status: :ok, location: @mainsupplier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mainsupplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainsuppliers/1 or /mainsuppliers/1.json
  def destroy
    @mainsupplier.destroy

    respond_to do |format|
      format.html { redirect_to mainsuppliers_url, notice: "Mainsupplier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainsupplier
      @mainsupplier = Mainsupplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mainsupplier_params
      params.require(:mainsupplier).permit(:name, :supply)
    end
end
