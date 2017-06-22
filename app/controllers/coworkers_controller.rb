class CoworkersController < ApplicationController

  def new
    @customer = Customer.find(params[:customer_id])
    @coworker = Coworker.new
  end

  def edit
    @customer = Customer.find(params[:customer_id])
    @coworker = Coworker.find(params[:id])
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @coworker = @customer.coworkers.create(coworker_params)
    redirect_to customer_path(@customer)
  end

  def update
    @customer = Customer.find(params[:customer_id])
    @coworker = Coworker.find(params[:id])
    if @coworker.update(coworker_params)
      redirect_to customer_path(@customer)
    end
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @coworker = @customer.coworkers.find(params[:id])
    @coworker.destroy
    redirect_to customer_path(@customer)
  end

  private
  def coworker_params
    params.require(:coworker).permit(:coworker_name,
                                     :coworker_position,
                                     :coworker_phone,
                                     :coworker_skype,
                                     :coworker_email)
  end

end
