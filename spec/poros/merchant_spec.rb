require 'rails_helper'

RSpec.describe 'merchant poro' do
  it 'exists' do
    data = {
      id: "1",
      type: "merchant",
      attributes: {name: 'Shrek'}
    }

    merchant = Merchant.new(data)
    expect(merchant.name).to eq('Shrek')
    expect(merchant.id).to eq('1')
  end
end
