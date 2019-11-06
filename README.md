# Duration, a wrapper around :timer.tc of Erlang but in Elixir


I found myself having to monitor the duration of time it took to execute some code
in Elixir project but I also wanted to humanized version of that duration of time. So I build a wrapper
utility module that can do that for me in every project without having to duplicate code everywhere.

It uses Timex to output the time it took to execute a function in both milliseconds and 
a humanized way.

Example: 

```
iex(1)> Timer.tc(fn -> :timer.sleep(:timer.seconds(1)) end)
[time: 1002248, humanized_duration: "1 second, 2.248 milliseconds", reply: :ok]
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `duration` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:duration, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/duration](https://hexdocs.pm/duration).

