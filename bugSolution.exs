```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, 0, fn x, acc ->
  if rem(x, 2) == 0 do
    acc + x
  else
    acc
  end
  # Explicit return statement added to solve the bug
  acc + x #Correct approach in general
end)

IO.puts result

#Alternative, more idiomatic solution
result2 = Enum.sum(Enum.filter(list, &rem(&1, 2) == 0))
IO.puts result2
```