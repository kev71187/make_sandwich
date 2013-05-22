class OrdersController < ApplicationController
  before_filter :require_login

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.find_all_by_user_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find_by_id_and_user_id(params[:id], current_user.id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new
    @sandwiches = Sandwich.all
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  # def edit
  #   @order = Order.find(params[:id])
  # end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])
    @order.user_id = current_user.id

    respond_to do |format|
      if @order.save
        #OrderMailer.order_request(current_user, @order).deliver
        session[:order_session] = @order
        format.html { redirect_to success_orders_path }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { redirect_to error_orders_path }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  # def update
  #   @order = Order.find_by_id_and_user_id(params[:id], current_user)

  #   respond_to do |format|
  #     if @order.update_attributes(params[:order])
  #       format.html { redirect_to @order, notice: 'Order was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @order.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /orders/1
  # DELETE /orders/1.json
  # def destroy
  #   @order = Order.find_by_id_and_user_id(params[:id], current_user)
  #   @order.destroy

  #   respond_to do |format|
  #     format.html { redirect_to orders_url }
  #     format.json { head :no_content }
  #   end
  # end

  def success
    @order = session[:order_session]
    session[:order_session] = nil
    unless @order
      redirect_to error_orders_path
    end
  end
end
