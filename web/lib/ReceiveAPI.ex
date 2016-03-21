defmodule ReceiveAPI do

  alias Receive

  def receive do
    {:ok, connection} = AMQP.Connection.open "amqp://URXUg6J0:7HBdTaSietQgyQBvdiCMZpIrJIbQIF64@excited-nelthilta-31.bigwig.lshift.net:10287/ch4tOy6aLnX0"
    {:ok, channel} = AMQP.Channel.open(connection)
    AMQP.Queue.declare(channel, "hello")
    AMQP.Basic.consume(channel, "hello", nil, no_ack: true)
    IO.puts " [*] Waiting for messages. To exit press CTRL+C, CTRL+C"

    Receive.wait_for_messages
  end
end
