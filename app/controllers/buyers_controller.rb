class BuyersController < ApplicationController

  def new
    @buyer = Buyer.new
  end

  def create
    @buyer = Buyer.create(buyer_params)
    if @buyer.save
      redirect_to @buyer
    else
      render :new
    end
  end

  def show
    @buyer = Buyer.find(params[:id])
  end

  def edit
    @buyer = Buyer.find(params[:id])
  end

  def update
    @buyer = Buyer.find(params[:id])
    @buyer.update(buyer_params)
      if @buyer.save
        redirect_to @buyer
      else
        render :edit
      end
  end

  def destroy
    @buyer = Buyer.find(params[:id])
    @buyer.destroy
      redirect_to profile_path(@user)
  end

  private

  def buyer_params
    params.require(:buyer).permit(:current_owner, :borrower, :property_address_number, :property_address_street, :property_address_type, :property_address_city, :property_address_state, :property_address_zip, :county, :purchase_price, :owners_coverage_amount, :type_owners_policy_requested, :type_of_title, :lender_name, :type_of_loan, :loan_number, :loan_amount, :variable_loan_coverage, :type_of_loan_policy, :icl_requested, :alta_endorsement, :user_id)
  end

end
