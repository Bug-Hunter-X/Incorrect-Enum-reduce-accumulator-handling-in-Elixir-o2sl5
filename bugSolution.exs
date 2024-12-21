```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x  # Correctly adds to accumulator when condition is met
  else
    acc      # Correctly keeps existing accumulator value
  end
end)

IO.puts(result) # Output: 9

#Alternative approach using Enum.filter for clarity:
filtered_list = Enum.filter(list, fn x -> x > 3 end)
sum = Enum.sum(filtered_list)
IO.puts(sum) #Output: 9
```