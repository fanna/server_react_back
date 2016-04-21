defmodule Status do
  import Exredis

  client = Exredis.start_using_connection_string("redis://h:pe3ua42ml1bmiebdpefmab70qp8@ec2-54-235-163-223.compute-1.amazonaws.com:12009")


  def get, do: start_link |> elem(1) |> query ["GET", "Status"]
  def set(status), do: start_link |> elem(1) |> query ["SET", "Status", status]
end
