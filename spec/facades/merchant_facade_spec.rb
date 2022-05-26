require 'rails_helper'

RSpec.describe 'merchant facade' do
  it 'returns all merchants info' do
    merchants = MerchantFacade.merchants

    expect(merchants).to be_a Array
    expect(merchants).to be_all Merchant
  end

  it 'returns merchant info' do
    merchant = MerchantFacade.merchant(1)
    
    expect(merchant).to be_a Merchant
  end
end
