require 'rails_helper'

RSpec.describe 'merchant service' do
  it 'gets a list of all merchants' do
    search = MerchantService.merchants

    expect(search).to be_a(Hash)
    expect(search[:data]).to be_a Array
    merchant_data = search[:data].first
    expect(merchant_data[:attributes]).to have_key(:name)
    expect(merchant_data[:attributes][:name]).to be_a String
  end

  it 'gets a single merchant' do
    search = MerchantService.merchant("1")
    # binding.pry
    expect(search).to be_a Hash
    expect(search[:data]).to be_a Hash
    expect(search[:data]).to have_key :id
    expect(search[:data][:attributes]).to have_key :name
  end
end
