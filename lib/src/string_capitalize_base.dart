extension StringCapitalize on String {
  /// Capitalize this string
  ///
  /// To uppercase first letter of this string:
  /// ```dart
  /// 'dart'.capitalizeOrFail() // Dart
  /// ```
  String capitalizeOrFail() {
    if (isEmpty) {
      throw 'String doesn\'t [empty]';
    }

    final firstLetter = this[0].toUpperCase();
    final restLetters = substring(1, length);

    return '$firstLetter$restLetters';
  }
}
