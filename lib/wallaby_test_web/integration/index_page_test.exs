defmodule WallabyTestWeb.IndexPageTest do
  import Wallaby.Query, only: [css: 2]

  test "has a big hero section", %{session: session} do
    session
    |> visit("/")
    |> find(css("section", count: 3))
    |> Enum.at(1)
    |> assert_has(css("h1", text: "Welcome to Phoenix!"))
  end
end
