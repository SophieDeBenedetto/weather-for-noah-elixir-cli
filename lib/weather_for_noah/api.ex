require IEx;
defmodule WeatherForNoah.Api do 
  @api_key Application.get_env(:weather_for_noah, :api_key)
  @base_url Application.get_env(:weather_for_noah, :base_url)
  
  def fetch(location) do 
    location 
    |> location_endpoint
    |> HTTPoison.get
  end

  def location_endpoint(location) do 
    @base_url <> "zip=" <> location <> ",us&units=imperial&appid=" <> @api_key
  end

end
