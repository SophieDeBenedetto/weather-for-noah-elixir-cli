defmodule WeatherForNoah.Parser do 
  
  def parse_response({:ok, body}), do: build_report(body.body)
  
  def parse_response({:error, body}) do 
    {_, message} = List.keyfind(body, "message", 0)
    IO.puts "Failed to retreive weather for your location: #{message}"
    System.halt(2)
  end

  def build_report(resp_body) do 
    Poison.Parser.parse!(resp_body)
    |> map_report_values
  end

  def map_report_values(report) do 
    %{"current_observation" => %{"temp_f" => temp_min, "weather" => main}} = report
    [%{"fcttext" => description} | _] = report["forecast"]["txt_forecast"]["forecastday"]
    %WeatherForNoah.Report{temp_min: temp_min, description: description, main: main}
  end
end
