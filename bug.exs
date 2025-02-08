```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if rem(x, 2) == 0 do
    acc + x
  else
    acc
  end
  # Missing return statement here
  # This is a common error in Elixir's anonymous functions
  # that causes unexpected behavior and can be hard to debug.
end)
```