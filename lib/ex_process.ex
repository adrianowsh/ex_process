defmodule ExProcess do
  def run do
      pong_pid = spawn(Pong, :start, [])
      _ping_pid = spawn(Ping, :run, [3, pong_pid])
  end
end
