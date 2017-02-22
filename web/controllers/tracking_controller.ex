defmodule GpsLogger.TrackingController do
  use GpsLogger.Web, :controller

  def get_gps(conn, params) do
    IO.inspect params

    json(conn, %{result: "ok"})
  end

  def record_gps(conn, params) do
    IO.inspect params

    json(conn, %{result: "ok"})
  end
end
