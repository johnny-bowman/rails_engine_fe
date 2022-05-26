require 'rails_helper'

RSpec.describe 'merchants index' do
  before :each do
    visit merchants_path
  end

  it "links to merchant show page" do
    click_link('Schroeder-Jerde')
    expect(current_path).to eq("/merchants/1")
  end
end
