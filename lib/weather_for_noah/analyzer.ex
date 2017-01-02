defmodule WeatherForNoah.Analyzer do 
  
  def analyze(report = %{main: "Rain", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 32..50 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "cold", percipitation: "rain"})}
  end

  def analyze(report = %{main: "Rain", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 50..65 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "warm", percipitation: "rain"})}
  end

  def analyze(report = %{main: "Rain", temp_min:  temp_min, description: description}) do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "hot", percipitation: "rain"})}
  end

  def analyze(report = %{main: "Drizzle", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 32..50 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "cold", percipitation: "rain"})}
  end

  def analyze(report = %{main: "Drizzle", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 50..65 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "warm", percipitation: "rain"})}
  end

  def analyze(report = %{main: "Drizzle", temp_min:  temp_min, description: description}) do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "hot", percipitation: "rain"})}
  end

  def analyze(report = %{main: "Snow", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 0..20 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "freezing", percipitation: "snow"})}
  end

  def analyze(report = %{main: "Snow", temp_min:  temp_min, description: description}) do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "cold", percipitation: "snow"})}
  end

  def analyze(report = %{main: "Clear", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 0..32 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "freezing", percipitation: "clear"})}
  end

  def analyze(report = %{main: "Clear", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 32..50 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "cold", percipitation: "clear"})}
  end

  def analyze(report = %{main: "Clear", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 50..60 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "warm", percipitation: "celear"})}
  end

  def analyze(report = %{main: "Clear", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 60..80 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "hot", percipitation: "clear"})}
  end

  def analyze(report = %{main: "Clear", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 80..100 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "sweltering", percipitation: "clear"})}
  end

  def analyze(report = %{main: "Overcast", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 0..32 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "freezing", percipitation: "clear"})}
  end

  def analyze(report = %{main: "Overcast", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 32..50 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "cold", percipitation: "clear"})}
  end

  def analyze(report = %{main: "Overcast", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 50..60 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "warm", percipitation: "celear"})}
  end

  def analyze(report = %{main: "Overcast", temp_min:  temp_min, description: description}) 
  when round(temp_min) in 60..80 do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "hot", percipitation: "clear"})}
  end

  def analyze(report = %{main: "Overcast", temp_min:  temp_min, description: description}) do 
    %{weather: report, outfit: WeatherForNoah.Outfits.outfit(%{temp: "sweltering", percipitation: "clear"})}
  end

end