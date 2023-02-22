import Config

config :oauth2_provider, ecto_repos: [Repo]

config :oauth2_provider, Repo,
  database: "oauth2_provider_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432"
