# Potential IndexOutOfBoundsException in Dart JSON Parsing

This repository demonstrates a common error in Dart when parsing JSON responses. The code attempts to access the first element of a JSON list without checking if the list is empty or null, leading to a potential `IndexOutOfBoundsException`.

The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a corrected version that handles potential errors gracefully.

## How to reproduce

1. Clone this repository.
2. Run `bug.dart`.  If the API returns an empty JSON array, the application crashes. 
3. Run `bugSolution.dart` to see how to properly handle empty or null responses. 

## Solution

The solution involves checking if the JSON response is empty or null before attempting to access elements. The corrected code is provided in `bugSolution.dart`.