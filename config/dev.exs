use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :phoenix_amazon, Amazon.Endpoint,
  http: [port: 3000],
  debug_errors: true,
  code_reloader: true,
  cache_static_lookup: false,
  check_origin: false,
  watchers: []

# Watch static and templates for browser reloading.
config :phoenix_amazon, Amazon.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      # ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :phoenix_amazon, Amazon.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_amazon_dev",
  hostname: "localhost",
  pool_size: 5

# Guardian configuration
config :guardian, Guardian,
  secret_key: "W9cDv9fjPtsYv2gItOcFb5PzmRzqGkrOsJGmby0KpBOlHJIlhxMKFmIlcCG9PVFQ"

config :phoenix_amazon, Amazon.Google,
  client_id: System.get_env("GOOGLE_ID"),
  client_secret: System.get_env("GOOGLE_SECRET"),
  redirect_uri: System.get_env("GOOGLE_URI")

config :phoenix_amazon, Amazon.Facebook,
  client_id: System.get_env("FACEBOOK_ID"),
  client_secret: System.get_env("FACEBOOK_SECRET"),
  redirect_uri: System.get_env("FACEBOOK_URI")
