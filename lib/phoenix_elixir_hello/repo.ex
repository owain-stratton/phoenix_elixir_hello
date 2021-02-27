defmodule PhoenixElixirHello.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_elixir_hello,
    adapter: Ecto.Adapters.Postgres
end
