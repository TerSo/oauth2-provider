defmodule Oauth2ProviderTest do
  use ExUnit.Case
  doctest Oauth2Provider

  test "greets the world" do
    assert Oauth2Provider.hello() == :world
  end
end
