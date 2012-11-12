class CustomerPurchasesController < ApplicationController
  # GET /customer_purchases
  # GET /customer_purchases.json
  def index
    @customer_purchases = CustomerPurchase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_purchases }
    end
  end

  # GET /customer_purchases/1
  # GET /customer_purchases/1.json
  def show
    @customer_purchase = CustomerPurchase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_purchase }
    end
  end

  # GET /customer_purchases/new
  # GET /customer_purchases/new.json
  def new
    @customer_purchase = CustomerPurchase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_purchase }
    end
  end

  # GET /customer_purchases/1/edit
  def edit
    @customer_purchase = CustomerPurchase.find(params[:id])
  end

  # POST /customer_purchases
  # POST /customer_purchases.json
  def create
    @customer_purchase = CustomerPurchase.new(params[:customer_purchase])

    respond_to do |format|
      if @customer_purchase.save
        format.html { redirect_to @customer_purchase, notice: 'Customer purchase was successfully created.' }
        format.json { render json: @customer_purchase, status: :created, location: @customer_purchase }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_purchases/1
  # PUT /customer_purchases/1.json
  def update
    @customer_purchase = CustomerPurchase.find(params[:id])

    respond_to do |format|
      if @customer_purchase.update_attributes(params[:customer_purchase])
        format.html { redirect_to @customer_purchase, notice: 'Customer purchase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_purchases/1
  # DELETE /customer_purchases/1.json
  def destroy
    @customer_purchase = CustomerPurchase.find(params[:id])
    @customer_purchase.destroy

    respond_to do |format|
      format.html { redirect_to customer_purchases_url }
      format.json { head :no_content }
    end
  end
end
