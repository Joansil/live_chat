# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :livechat,
  ecto_repos: [Livechat.Repo]

# Configures the endpoint
config :livechat, LivechatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AZzUlnWpKXv4rNh9wfE5oSJcRMbQv997GwAEs/8jdx4xjGo4OOZ6afz3ROB1e8fr",
  render_errors: [view: LivechatWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Livechat.PubSub,
  live_view: [signing_salt: "PGc1w+UwgwekaizD+gZ9rME8e7X4LmcF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :template_engines, leex: Phoenix.LiveView.Engine
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
