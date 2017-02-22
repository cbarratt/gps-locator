use Mix.Config

config :gps_logger, GpsLogger.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/manifest.json"

# Do not print debug messages in production
config :logger, level: :info

config :gps_logger, GpsLogger.Endpoint,
  secret_key_base: "u+UXn00lclqy+xT29bVH99ue1vwGo03B241L+g7Ka4VZYU4ucHQ72KLzStfjr58C"

# Configure your database
config :gps_logger, GpsLogger.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: {:system, "DATABASE_URL"},
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true
