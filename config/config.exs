# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wallaby_test,
  ecto_repos: [WallabyTest.Repo]

# Configures the endpoint
config :wallaby_test, WallabyTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2NZ9YRRLpjLZKFhqK194x8iF0Mo1jjcCYXNgPv2ni2OKIM98tTqZ3klWuyW41TlN",
  render_errors: [view: WallabyTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WallabyTest.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
