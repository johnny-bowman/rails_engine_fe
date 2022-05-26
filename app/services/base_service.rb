class BaseService
  private

  def self.conn
    Faraday.new("http://localhost:3000")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
