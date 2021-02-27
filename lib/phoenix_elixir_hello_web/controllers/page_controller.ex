defmodule PhoenixElixirHelloWeb.PageController do
  use PhoenixElixirHelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
