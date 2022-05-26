require 'rails_helper'

RSpec.describe 'item poro' do
  it 'exists' do
    data = {
      id: "1",
      type: "item",
      attributes: {
        name: 'Shrek',
        description: 'big green dude',
        unit_price: 40.24,
        merchant_id: 1,
      }
    }

    item = Item.new(data)
    expect(item.name).to eq('Shrek')
    expect(item.description).to eq('big green dude')
    expect(item.unit_price).to eq(40.24)
    expect(item.merchant_id).to eq(1)
  end
end
