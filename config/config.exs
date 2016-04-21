# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :server_react_back, ServerReactBack.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "DoPnNkcAIv700QFtbL9+RezF65iKSoGnflbcW2g/+0GDgxidgAF2IxpLgHGj5QpU",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: ServerReactBack.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :exredis,
  url: "redis://h:pe3ua42ml1bmiebdpefmab70qp8@ec2-54-235-163-223.compute-1.amazonaws.com:12009",
  reconnect: :no_reconnect,
  max_queue: :infinity

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
