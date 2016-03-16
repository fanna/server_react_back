defmodule ReceiveAPI do

  alias Receive

  def receive do
    {:ok, connection} = AMQP.Connection.open(host: "https://rocky-ridge-42687.herokuapp.com", port: 443)
    {:ok, channel} = AMQP.Channel.open(connection)
    AMQP.Queue.declare(channel, "hello")
    AMQP.Basic.consume(channel, "hello", nil, no_ack: true)
    IO.puts " [*] Waiting for messages. To exit press CTRL+C, CTRL+C"

    Receive.wait_for_messages
  end
end
