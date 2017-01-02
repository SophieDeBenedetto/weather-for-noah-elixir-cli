defmodule WeatherForNoah.Api do 
  @api_key Application.get_env(:weather_for_noah, :api_key)
  @base_url Application.get_env(:weather_for_noah, :base_url)
  
  def fetch(location) do
    location
    |> location_endpoint
    |> HTTPoison.get([], [ ssl: [{:versions, [:'tlsv1.2']}] ])
  end

  def location_endpoint(location) do
     @base_url <> "/#{location}.json"
  end

end
