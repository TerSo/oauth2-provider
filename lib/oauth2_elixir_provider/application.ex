defmodule Oauth2Provider.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(
        scheme: :http,
        plug: Endpoints,
        options: [port: 4001]
      ),
      Repo
      # Starts a worker by calling: Oauth2Provider.Worker.start_link(arg)
      # {Oauth2Provider.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Oauth2Provider.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
