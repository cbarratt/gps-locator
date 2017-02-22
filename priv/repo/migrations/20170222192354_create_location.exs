defmodule GpsLogger.Repo.Migrations.CreateLocation do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :latitude, :decimal
      add :longitude, :decimal
      add :battery_state, :string
      add :battery_level, :decimal
      add :speed, :integer

      timestamps()
    end

  end
end
