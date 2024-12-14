```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:kill)
    end
    IO.puts(x)
  end)
rescue
  :kill -> IO.puts("Process exit requested. Handling gracefully.")
  _ -> IO.puts("Unexpected error.")
end
```