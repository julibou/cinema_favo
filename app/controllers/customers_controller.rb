class CustomersController < ApplicationController
  def show

    @movies = current_customer.movies #ユーザーが投稿した映画
    @customer = current_customer


  end

  def index
  end

  def edit
     @customer =Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path(@customer.id)
  end

  def destroy

  end

  private

  def customer_params
    params.require(:customer).permit(:name, :profile_image)
  end

end
