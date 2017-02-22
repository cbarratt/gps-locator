defmodule GpsLogger.LocationTest do
  use GpsLogger.ModelCase

  alias GpsLogger.Location

  @valid_attrs %{battery_level: 42, battery_state: "some content", latitude: "120.5", longitude: "120.5", speed: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Location.changeset(%Location{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Location.changeset(%Location{}, @invalid_attrs)
    refute changeset.valid?
  end
end
