defmodule ServerReactBack.RoomChannel do
  use Phoenix.Channel

  alias ServerReactBack.JsonChanger
  alias ReceiveAPI

  def join("rooms:lobby", _message, socket) do
    {:ok, socket}
  end

  def handle_in("new_msg", data, socket) do
    ReceiveAPI.receive
    #broadcast! socket, "new_msg", JsonChanger.change(data)
    {:noreply, socket}
  end

  def handle_out("new_msg", payload, socket) do
    push socket, "new_msg", payload
    {:noreply, socket}
  end
end
