class AdhearsionClient
  class << self
    def call participants
      create_connection.get ('/'), {participants: participants}
    end
  end

  private
  def self.create_connection
    Faraday.new(:url => "http://#{DTSettings.adhearsion.host}:#{DTSettings.adhearsion.port}") do |faraday|
      faraday.request :url_encoded
      faraday.adapter Faraday.default_adapter
    end
  end
end
