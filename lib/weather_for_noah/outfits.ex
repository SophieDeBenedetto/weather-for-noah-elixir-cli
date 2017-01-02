defmodule WeatherForNoah.Outfits do 

  def outfit(%{temp: "cold", percipitation: "rain"}) do
    %{top: "warm sweater", bottom: "warm pants", shoes: "rain boots", outerwear: "warm rain-proof coat, umbrella"} 
  end

  def outfit(%{temp: "warm", percipitation: "rain"}) do 
    %{top: "t-shirt", bottom: "pants", shoes: "rain boots or sneakers", outerwear: "rain coat, umbrella"} 
  end

  def outfit(%{temp: "hot", percipitation: "rain"}) do
    %{top: "warm sweater", bottom: "pants or shorts", shoes: "rain boots or sneakers", outerwear: "light rain coat, umbrella"} 
  end

  def outfit(%{temp: "freezing", percipitation: "snow"}) do 
    %{top: "warm sweater and lots of layers", bottom: "warm pants", shoes: "snow boots", outerwear: "thick coat, scarf, hat, gloves"} 
  end

  def outfit(%{temp: "cold", percipitation: "snow"}) do
    %{top: "warm sweater", bottom: "warm pants", shoes: "snow boots", outerwear: "coat, hat, gloves"} 
  end

  def outfit(%{temp: "freezing", percipitation: "clear"}) do 
    %{top: "warm sweater and lots of layers", bottom: "warm pants", shoes: "boots", outerwear: "thick coat, scarf, hat, gloves"} 
  end

  def outfit(%{temp: "cold", percipitation: "clear"}) do
    %{top: "warm sweater", bottom: "warm pants", shoes: "boots or sneakers", outerwear: "warm coat, hat, scarf"} 
  end

  def outfit(%{temp: "warm", percipitation: "clear"}) do 
    %{top: "t-shirt or light long-sleeves", bottom: "pants", shoes: "sneakers", outerwear: "maybe bring a light jacket"} 
  end

  def outfit(%{temp: "hot", percipitation: "clear"}) do
    %{top: "t-shirt or tank-top", bottom: "short", shoes: "sneaker or sandals", outerwear: "sunglasses"} 
  end

  def outfit(%{temp: "sweltering", percipitation: "clear"}) do 
    %{top: "tank-top", bottom: "shorts", shoes: "sandals", outerwear: "sunglasses"} 
  end
end