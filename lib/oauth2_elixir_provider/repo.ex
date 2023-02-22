defmodule Repo do
    use Ecto.Repo,
    otp_app: :oauth2_provider,
    adapter: Ecto.Adapters.Postgres
end
