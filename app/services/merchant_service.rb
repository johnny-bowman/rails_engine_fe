class MerchantService < BaseService
  def self.merchants
    response = conn.get('/api/v1/merchants')

    get_json(response)
  end

  def self.merchant(id)
    response = conn.get("/api/v1/merchants/#{id.to_s}")

    get_json(response)
  end
end
