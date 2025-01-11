```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Check if jsonData is not null or empty
      if (jsonData != null && jsonData.isNotEmpty) {
        final firstElement = jsonData[0];
        print('First element: $firstElement');
      } else {
        print('JSON response is empty or null.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```