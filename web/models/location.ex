defmodule GpsLogger.Location do
  use GpsLogger.Web, :model

  schema "locations" do
    field :latitude, :decimal
    field :longitude, :decimal
    field :battery_state, :string
    field :battery_level, :decimal
    field :speed, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:latitude, :longitude, :battery_state, :battery_level, :speed])
    |> validate_required([:latitude, :longitude, :battery_state, :battery_level, :speed])
  end
end
