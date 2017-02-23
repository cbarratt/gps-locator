defmodule GpsLogger.PageController do
  use GpsLogger.Web, :controller

  alias GpsLogger.{Repo, Location}

  def index(conn, _params) do
    pins = Repo.all(Location)

    render(conn, pins: pins)
  end
end
