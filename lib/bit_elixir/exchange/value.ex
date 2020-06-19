defmodule BitElixir.Exchange.Value do
    def get do
        HTTPoison.start
        HTTPoison.get!("https://api.bitflyer.com/v1/ticker") 
        |> Map.get(:body)
        |> Poison.decode!
        |> Map.get("ltp")
    end
end