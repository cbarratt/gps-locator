defmodule GpsLogger.Router do
  use GpsLogger.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GpsLogger do
    pipe_through :browser

    get "/", PageController, :index

    scope "/gps", GpsLogger do
      pipe_through :api

      get "/", TrackingController, :get_gps
      post "/", TrackingController, :record_gps
    end
  end
end
