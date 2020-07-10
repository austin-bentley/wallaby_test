use Mix.Config

# Configure your database
config :wallaby_test, WallabyTest.Repo,
  username: "postgres",
  password: "postgres",
  database: "wallaby_test_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wallaby_test, WallabyTestWeb.Endpoint,
  http: [port: 4002],
  server: true

config :wallaby_test, :sql_sandbox, true

config :wallaby,
  driver: Wallaby.Chrome,
  screenshot_on_failure: true

# Print only warnings and errors during test
config :logger, level: :warn
