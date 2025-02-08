```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        print(jsonData);
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
        // Handle JSON decoding error, e.g., log, display error message
      } 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    print('Error: $e');
    // Handle other exceptions, e.g., network issues
  }
}
```