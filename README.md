# Unhandled Process.exit in Elixir Enum.each

This repository demonstrates a common error in Elixir when using `Enum.each` and `Process.exit`.  The provided code shows how an unhandled `Process.exit` within the `Enum.each` function can lead to unexpected termination of the process.

The solution showcases a more robust approach to handle potential exceptions or termination within the enumeration, preventing unintended crashes.

## Bug

The `bug.ex` file contains Elixir code that uses `Enum.each` to iterate over a list. If a certain condition is met (the value equals 3 in this case), `Process.exit` is called. This will abruptly terminate the process without proper cleanup or error handling.

## Solution

The `bugSolution.ex` file demonstrates the solution. Instead of `Process.exit`, the code now uses a `try-catch` block to handle the potential exception. This allows for graceful handling of errors and prevents unexpected process termination.