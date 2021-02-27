# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_elixir_hello,
  ecto_repos: [PhoenixElixirHello.Repo]

# Configures the endpoint
config :phoenix_elixir_hello, PhoenixElixirHelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "angp4OV+PD6Eo6xjluvALWe2GvXJWypK63Ud8MAlxH1FquT855fRWbKgtiLGkR/x",
  render_errors: [view: PhoenixElixirHelloWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixElixirHello.PubSub,
  live_view: [signing_salt: "/8S+IAoC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
