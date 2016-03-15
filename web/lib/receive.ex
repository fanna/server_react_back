defmodule Receive do
  def wait_for_messages do
    receive do
      {:basic_deliver, payload, _meta} ->
        payload = :erlang.binary_to_term(payload)
        IO.puts " [x] Received message"
        ServerReactBack.Endpoint.broadcast("rooms:lobby", "new_msg", payload)
        wait_for_messages
    end
  end
end
