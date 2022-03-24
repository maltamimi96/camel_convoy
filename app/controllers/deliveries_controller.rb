class DeliveriesController < ApplicationController
  before_action :set_delivery, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /deliveries or /deliveries.json
  def index
    @deliveries = Delivery.all
  end

  # GET /deliveries/1 or /deliveries/1.json
  def show
  end
  def view_all
    @deliveries = Delivery.all
  end  

  # GET /deliveries/new
  def new
    @delivery = current_user.deliveries.build
   #@delivery =Delivery.new
  end

  # GET /deliveries/1/edit
  def edit
  end

  # POST /deliveries or /deliveries.json
  def create
    #@delivery = Delivery.new(delivery_params)
    @delivery = current_user.deliveries.build(delivery_params)

    respond_to do |format|
      if @delivery.save
        format.html { redirect_to delivery_url(@delivery), notice: "Delivery was successfully created." }
        format.json { render :show, status: :created, location: @delivery }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliveries/1 or /deliveries/1.json
  def update
    respond_to do |format|
      if @delivery.update(delivery_params)
        format.html { redirect_to delivery_url(@delivery), notice: "Delivery was successfully updated." }
        format.json { render :show, status: :ok, location: @delivery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1 or /deliveries/1.json
  def destroy
    @delivery.destroy

    respond_to do |format|
      format.html { redirect_to deliveries_url, notice: "Delivery was successfully destroyed." }
      format.json { head :no_content }
    end
  end



def correct_user
  @delivery = current_user.deliveries.find_by(id:params[:id])
  redirect_to deliveries_path,notice:"not authorised"if @delivery.nil?
end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_params
      params.require(:delivery).permit(:title,  :by, :packages, :pay,:user_id,:picture)
    end




end