defmodule WeatherForNoah.CLI do 
  def main(argv) do 
    argv
    |> parse_args
    |> run
  end

  def parse_args(args) do 
    parse = OptionParser.parse(args, switches: [help: :boolean],
                                     aliases: [h: :help])
    case parse do 
      {[help: true], _, _} -> :help
      {_, ["start"], _} -> :start
      _ -> :help
    end
  end

  def run(:help) do 
    IO.puts """
      Not sure what to wear because you don't understand weather?
      Then this is the tool for you!
      Simply give the `-start` or `--s` command, answer a few simple questions and we'll tell you what to wear today.
    """
  end

  def run(:start) do 
    get_location
    |> process
  end

  def get_location do 
    IO.puts "What is your location?"
    read
  end

  def read do 
    case IO.read(:stdio, :line) do 
      " \n" -> get_location
      "\n" -> get_location
      {:error, reason} -> 
        IO.puts "Error #{reason}"
        get_location
      data -> String.split(data, ", ")
    end
  end

  def process(location) do
    WeatherForNoah.Api.fetch(location)
    |> WeatherForNoah.Parser.parse_response
    |> WeatherForNoah.Analyzer.analyze 
    |> WeatherForNoah.ResultFormatter.output_report
  end
end
