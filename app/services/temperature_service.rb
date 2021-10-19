class TemperatureService
    def self.call(city)
        begin
            response = RestClient.get("api.openweathermap.org/data/2.5/weather?q=#{city}&units=metric&appid=#{ENV['API_KEY']}")
            temperature = JSON.parse(response)['main']
            temperature['temp']
        rescue RestClient::ExceptionWithResponse
            nil
        rescue URI::InvalidURIError
            nil
          end
    end
end
