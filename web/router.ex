defmodule ServerReactBack.Router do
  use ServerReactBack.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    #plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :csrf do
    plug :protect_from_forgery
  end

  scope "/", ServerReactBack do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    #get "/status", StatusController, :index

    get "/status", StatusController, :show

  end


  # Other scopes may use custom stacks.
  # scope "/api", ServerReactBack do
  #   pipe_through :api
  # end
end
