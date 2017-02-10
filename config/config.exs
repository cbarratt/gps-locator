# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gps_logger,
  ecto_repos: [GpsLogger.Repo]

# Configures the endpoint
config :gps_logger, GpsLogger.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UtUvtVVrSFFmHj9QPOBZMRV+gq7JYOI9TE83RebWZGiaRsqalI4ufewmmpzgYmf7",
  render_errors: [view: GpsLogger.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GpsLogger.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
