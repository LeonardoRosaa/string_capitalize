extension StringCapitalize on String {
  /// Does transform uppercase first letter of this string
  /// and this is be empty, returns an empty
  /// string.
  ///
  /// To uppercase first letter of this string:
  /// ```dart
  /// 'dart'.capitalizeOrFail() // Dart
  /// ```
  String capitalize() {
    if (isEmpty) return '';

    return _makeCapitalization();
  }

  /// Does transform uppercase first letter of this string
  /// or throw an exception if this string
  /// is be empty.
  ///
  /// To uppercase first letter of this string:
  /// ```dart
  /// 'dart'.capitalizeOrFail() // Dart
  /// ```
  String capitalizeOrFail() {
    if (isEmpty) {
      throw 'String does not be [empty]';
    }

    return _makeCapitalization();
  }

  /// Does transform first letter of
  /// this string to uppercase.
  String _makeCapitalization() {
    final firstLetter = this[0].toUpperCase();
    final restLetters = substring(1, length);

    return '$firstLetter$restLetters';
  }
}
