class KindOfPackingsController < ApplicationController
  before_action :set_kind_of_packing, only: [:show, :edit, :update, :destroy]

  # GET /kind_of_packings
  # GET /kind_of_packings.json
  def index
    @kind_of_packings = KindOfPacking.all
  end

  # GET /kind_of_packings/1
  # GET /kind_of_packings/1.json
  def show
  end

  # GET /kind_of_packings/new
  def new
    @kind_of_packing = KindOfPacking.new
  end

  # GET /kind_of_packings/1/edit
  def edit
  end

  # POST /kind_of_packings
  # POST /kind_of_packings.json
  def create
    @kind_of_packing = KindOfPacking.new(kind_of_packing_params)

    respond_to do |format|
      if @kind_of_packing.save
        format.html { redirect_to @kind_of_packing, notice: 'Kind of packing was successfully created.' }
        format.json { render :show, status: :created, location: @kind_of_packing }
      else
        format.html { render :new }
        format.json { render json: @kind_of_packing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kind_of_packings/1
  # PATCH/PUT /kind_of_packings/1.json
  def update
    respond_to do |format|
      if @kind_of_packing.update(kind_of_packing_params)
        format.html { redirect_to @kind_of_packing, notice: 'Kind of packing was successfully updated.' }
        format.json { render :show, status: :ok, location: @kind_of_packing }
      else
        format.html { render :edit }
        format.json { render json: @kind_of_packing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kind_of_packings/1
  # DELETE /kind_of_packings/1.json
  def destroy
    @kind_of_packing.destroy
    respond_to do |format|
      format.html { redirect_to kind_of_packings_url, notice: 'Kind of packing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kind_of_packing
      @kind_of_packing = KindOfPacking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kind_of_packing_params
      params.require(:kind_of_packing).permit(:name, :description)
    end
end
