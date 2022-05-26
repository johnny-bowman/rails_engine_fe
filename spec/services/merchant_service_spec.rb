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

    expect(search).to be_a Hash
    expect(search[:data]).to be_a Hash
    expect(search[:data]).to have_key :id
    expect(search[:data][:attributes]).to have_key :name
  end

  it 'gets merchant items' do
    search = MerchantService.items("1")

    expect(search).to be_a Hash
    expect(search[:data]).to be_a Array

    item = search[:data].first
    expect(item).to have_key :id
    expect(item[:attributes]).to have_key :name
    expect(item[:attributes]).to have_key :description
    expect(item[:attributes]).to have_key :unit_price
    expect(item[:attributes]).to have_key :merchant_id
  end
end
