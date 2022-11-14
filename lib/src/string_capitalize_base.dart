/// Matches all characteres
final foundLetters = RegExp(r'\w+.');

extension ListCapilize on List<String> {
  /// Transform first letter of each item to uppercase.
  /// 
  /// ```
  /// final items = ['dart', 'flutter'];
  /// print(items.capitalize()); // ['Dart', 'Flutter']
  /// ```
  List<String> capitalize() {
    return map((e) => e.capitalize()).toList();
  }
}

extension StringCapitalize on String {
  /// Transform the first letter to uppercase.
  ///
  /// ```dart
  /// 'dart'.capitalizeOrFail() // Dart
  /// ```
  String capitalize() {
    if (isEmpty) return '';

     final firstLetter = this[0].toUpperCase();
    final restLetters = substring(1);

    return '$firstLetter$restLetters';
  }

  /// Transform the first letter of each word to uppercase.
  ///
  /// ```dart
  /// 'I like dart language'.capitalizeEach() // I Like Dart Language
  /// 'I  like dart   language'.capitalizeEach() // I  Like Dart   Language
  /// ```
  String capitalizeEach() {
    if (isEmpty) return '';

      final words = split(' ');

    final formatted = words.map((e) => e.capitalize()).toList();

    return formatted.join(' ');
  }
}


