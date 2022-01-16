extension StringCapitalize on String {
  /// Uppercase first letter of this string
  /// and this is be empty, returns an empty
  /// string.
  ///
  /// To uppercase first letter of this string:
  /// ```dart
  /// 'dart'.capitalizeOrFail() // Dart
  /// ```
  String capitalize() {
    if (isEmpty) return '';

    return _buildCapitalization();
  }

  /// Uppercase first letter of this string
  /// or throw an exception if this string
  /// is be empty.
  ///
  /// To uppercase first letter of this string:
  /// ```dart
  /// 'dart'.capitalizeOrFail() // Dart
  /// ```
  String capitalizeOrFail() {
    if (isEmpty) {
      throw 'String doesn\'t [empty]';
    }

    return _buildCapitalization();
  }

  String _buildCapitalization() {
    final firstLetter = this[0].toUpperCase();
    final restLetters = substring(1, length);

    return '$firstLetter$restLetters';
  }
}
