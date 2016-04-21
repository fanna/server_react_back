use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :server_react_back, ServerReactBack.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin"]]

# Watch static and templates for browser reloading.
config :server_react_back, ServerReactBack.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

config :exredis,
  url: "redis://h:pe3ua42ml1bmiebdpefmab70qp8@ec2-54-235-163-223.compute-1.amazonaws.com:12009",
  reconnect: :no_reconnect,
  max_queue: :infinity

# Configure your database
config :server_react_back, ServerReactBack.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "server_react_back_dev",
  hostname: "localhost",
  pool_size: 10
