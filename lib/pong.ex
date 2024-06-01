defmodule Pong do
  def start do
    receive do
      :finish -> IO.puts("Pong finished")
      {:ping, ping_id} ->
        IO.puts("Pong received a PING")
        send(ping_id, :pong)
        start()
      end
  end
end
