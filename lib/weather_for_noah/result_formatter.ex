defmodule WeatherForNoah.ResultFormatter do 
  def output_report(report) do 
    IO.puts """
      +===============================================+
      +               TODAY'S WEATHER                 +
      +===============================================+ 
      #{report.weather.description}
      temperature of #{report.weather.temp_min}
      +================================================+ 
      +                 TODAY'S OUTFIT                 + 
      +================================================+
      top: #{report.outfit.top} 
      bottom: #{report.outfit.bottom}
      shoes: #{report.outfit.shoes}
      outerwear: #{report.outfit.outerwear} 
    """            
  end
end