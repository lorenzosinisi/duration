defmodule Timer do
  @moduledoc """
  This module provide the functioon `tc` that is a wrapper around :timer.tc
  and adds the formatting of time in a humanized way. So it always returns a
  keywordlist with the keys: :time, :humanized_duration and :reply
  """
  def tc(function) when is_function(function) do
    {time, reply} = :timer.tc(function)
    [time: time, humanized_duration: humanize_duration(time), reply: reply]
  end

  def tc(function, arguments) when is_function(function) do
    {time, reply} = :timer.tc(fn -> function.(arguments) end)
    [time: time, humanized_duration: humanize_duration(time), reply: reply]
  end

  def tc(module, function, arguments) when is_atom(function) and is_atom(module) do
    {time, reply} = :timer.tc(fn -> apply(module, function, arguments) end)
    [time: time, humanized_duration: humanize_duration(time), reply: reply]
  end

  defp humanize_duration(time) do
    Timex.Duration.from_seconds(time / 1_000_000)
    |> Timex.Format.Duration.Formatter.format(:humanized)
  end
end
