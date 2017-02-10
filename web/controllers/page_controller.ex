defmodule GpsLogger.PageController do
  use GpsLogger.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def gps(conn, params) do
    IO.inspect params

    json(conn, %{status: "ok"})
  end
end
