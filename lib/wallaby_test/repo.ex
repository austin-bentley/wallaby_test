defmodule WallabyTest.Repo do
  use Ecto.Repo,
    otp_app: :wallaby_test,
    adapter: Ecto.Adapters.Postgres
end
