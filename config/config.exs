# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config
config :weather_for_noah, base_url: "http://api.wunderground.com/api/#{System.get_env("WUNDERGROUND_API_KEY")}/geolookup/conditions/forecast/q"
# config :weather_for_noah, api_key: System.get_env("OPEN_WEATHER_API_KEY")
# config :weather_for_noah, base_url: "http://api.openweathermap.org/data/2.5/weather?"
# config :hackney, timeout: :infinite, max_connections: 5
# config :ssl, protocol_version: :"tlsv1.2"
# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :weather_for_noah, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:weather_for_noah, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
