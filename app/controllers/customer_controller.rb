class CustomerController < ApplicationController
    #before_action :set_customer, only: %i[ show edit update destroy ]

    # GET /customer or /customer.json
  def index
    @customer = Customer.all
  end

  # GET /customer/1 or /customer/1.json
  def show
  end

  # GET /customer/new
  def new
    @customer = Customer.new
  end

  # GET /customer/1/edit
  def edit
  end

  # POST /customer or /customer.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to customer_url(@customer), notice: "Cust was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer/1 or /customer/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to customer_url(@customer), notice: "Cust was successfully updated." }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer/1 or /customer/1.json
  def destroy
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customer_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:name, :email, :phone, :district)
    end
end


