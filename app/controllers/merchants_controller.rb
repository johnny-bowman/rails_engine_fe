class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.info
  end

  def show
    binding.pry
    @merchant = 
  end
end
