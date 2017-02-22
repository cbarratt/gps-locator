defmodule GpsLogger.TrackingController do
  use GpsLogger.Web, :controller

  alias GpsLogger.{Repo, Location}

  def get_gps(conn, params) do
    IO.inspect params

    json(conn, %{result: "ok"})
  end

  def record_gps(conn, params) do
    Enum.each(params["locations"], fn(data) ->
      [latitude, longitude] = data["geometry"]["coordinates"]

      input = %{
        latitude: latitude,
        longitude: longitude,
        battery_level: data["properties"]["battery_level"],
        battery_state: data["properties"]["battery_state"],
        speed: data["properties"]["speed"]
      }

      changeset = Location.changeset(%Location{}, input)

      Repo.insert(changeset)
    end)

    json(conn, %{result: "ok"})
  end
end
