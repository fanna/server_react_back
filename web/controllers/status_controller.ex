defmodule ServerReactBack.StatusController do
  use ServerReactBack.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, params) do
    render conn, "show.json", status: Status.get |> :unicode.characters_to_binary(:latin1, :utf8) #|> Poison.encode!
  end
end
