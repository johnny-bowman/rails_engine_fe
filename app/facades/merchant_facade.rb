class MerchantFacade
  def self.merchants
    json = MerchantService.merchants

    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant(id)
    json = MerchantService.merchant(id.to_s)

    Merchant.new(json[:data])
  end

  def self.items(id)
    json = MerchantService.items(id.to_s)

    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
