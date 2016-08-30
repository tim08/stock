class HistoryTransferOfProductsController < ApplicationController
  before_action :set_history_transfer_of_product, only: [:show, :edit, :update, :destroy]

  # GET /history_transfer_of_products
  # GET /history_transfer_of_products.json
  def index
    @history_transfer_of_products = HistoryTransferOfProduct.where(product_id: params[:product_id]) if params[:product_id].present?
    if params[:store_id].present?
      @history_transfer_of_products = HistoryTransferOfProduct.where(store_id: params[:store_id])
      @history_transfer_of_products = @history_transfer_of_products.where(date_in: Date.parse(params[:start_date])..Date.parse(params[:end_date])) if (params[:start_date].present? && params[:end_date].present?)
    end
  end

  # GET /history_transfer_of_products/1
  # GET /history_transfer_of_products/1.json
  def show
  end

  # GET /history_transfer_of_products/new
  def new
    @history_transfer_of_product = HistoryTransferOfProduct.new
  end

  # GET /history_transfer_of_products/1/edit
  def edit
  end

  # POST /history_transfer_of_products
  # POST /history_transfer_of_products.json
  def create
    @history_transfer_of_product = HistoryTransferOfProduct.new(history_transfer_of_product_params)

    respond_to do |format|
      if @history_transfer_of_product.save
        format.html { redirect_to @history_transfer_of_product, notice: 'History transfer of product was successfully created.' }
        format.json { render :show, status: :created, location: @history_transfer_of_product }
      else
        format.html { render :new }
        format.json { render json: @history_transfer_of_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /history_transfer_of_products/1
  # PATCH/PUT /history_transfer_of_products/1.json
  def update
    respond_to do |format|
      if @history_transfer_of_product.update(history_transfer_of_product_params)
        format.html { redirect_to @history_transfer_of_product, notice: 'History transfer of product was successfully updated.' }
        format.json { render :show, status: :ok, location: @history_transfer_of_product }
      else
        format.html { render :edit }
        format.json { render json: @history_transfer_of_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_transfer_of_products/1
  # DELETE /history_transfer_of_products/1.json
  def destroy
    @history_transfer_of_product.destroy
    respond_to do |format|
      format.html { redirect_to history_transfer_of_products_url, notice: 'History transfer of product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_transfer_of_product
      @history_transfer_of_product = HistoryTransferOfProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_transfer_of_product_params
      params.require(:history_transfer_of_product).permit(:date_in, :product_id, :description)
    end
end
