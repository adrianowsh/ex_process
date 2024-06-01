defmodule Ping do
  def run(0, pong_pid) do
    send(pong_pid, :finish)
    IO.puts("Ping finished")
  end

  def run(times, pong_pid) do
    send(pong_pid,  {:ping, self()})
    receive do
      :pong ->
        IO.puts("Ping received a PONG")
    end
    run(times-1,pong_pid)
  end
end
