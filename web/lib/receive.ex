defmodule Receive do
  alias Status

  def wait_for_messages do
    receive do
      {:basic_deliver, payload, _meta} ->
        payload = :erlang.binary_to_term(payload)
        IO.puts " [x] Received message"
        Status.set(payload)
        ServerReactBack.Endpoint.broadcast("rooms:lobby", "new_msg", payload)
        wait_for_messages
    end
  end
end
