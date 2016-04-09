class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    @services = Service.all

    if params[:category] == nil
      @products = Product.all
    else
      @products = Product.where(category: params[:category].titleize)
    end
    #alphabetical
    @my_categoryes = Product.select(:category).order(:category).distinct
  end

  # GET /services/1
  # GET /services/1.json
  def show

    if params[:category] == nil
      @products = Product.all
    else
      @products = Product.where(category: params[:category].titleize)
    end
    #alphabetical
    @my_categoryes = Product.select(:category).order(:category).distinct
  end

  # GET /services/new
  def new
    @service = Service.new

    if params[:category] == nil
      @products = Product.all
    else
      @products = Product.where(category: params[:category].titleize)
    end
    #alphabetical
    @my_categoryes = Product.select(:category).order(:category).distinct
  end

  # GET /services/1/edit
  def edit
    if params[:category] == nil
      @products = Product.all
    else
      @products = Product.where(category: params[:category].titleize)
    end
    #alphabetical
    @my_categoryes = Product.select(:category).order(:category).distinct
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:sup1, :sup2, :sup3, :sup4, :sup5, :sup6, :sup7, :sup8, :sup9, :sup10, :pri1, :pri2, :pri3, :pri4, :pri5, :pri6, :pri7, :pri8, :pri9, :pri10, :total_sup, :name, :hours, :hours_price, :margin, :img, :final_price)
    end
end
