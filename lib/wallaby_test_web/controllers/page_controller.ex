defmodule WallabyTestWeb.PageController do
  use WallabyTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
