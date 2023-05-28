import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :rumbl, Rumbl.Repo,
       pool: Ecto.Adapters.SQL.Sandbox,
       username: "root",
       password: "password",
       hostname: "localhost",
       database: "rumbl",
       stacktrace: true,
       show_sensitive_data_on_connection_error: true,
       pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rumbl, RumblWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qk6+JOiuCDLtjmvltyzWE7+YlDejah0igIgK0SiCDGnuek6BgXeCKMw8ORnoZ3BZ",
  server: false

# In test we don't send emails.
config :rumbl, Rumbl.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
