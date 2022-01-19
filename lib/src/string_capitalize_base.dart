/// Matches all characteres
final foundLetters = RegExp(r'\w+');

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

  /// Does transform uppercase first letter for all words 
  /// of this string or throw an exception if this string
  /// is be empty.
  ///
  /// To uppercase first letter for all words of this string:
  /// ```dart
  /// 'I like dart language'.capitalizeEach() // I Like Dart Language
  /// 'I  like dart   language'.capitalizeEach() // I  Like Dart   Language
  /// ```
  String capitalizeEach() {
    
    if (isEmpty) return '';

    return _makeCapitalizationEach();
  }

  /// Does uppercase first letter for all words
  /// of this string
  String _makeCapitalizationEach() {
    final words = <String>[];
    var oldEnd = 0;

    foundLetters.allMatches(this).map((e) {
      var indexWord = oldEnd;
      /// Get word by start and end indexes
      final word = substring(e.start, e.end).capitalize();

      while (indexWord != e.start) {
        words.add(' ');
        indexWord++;
      }

      oldEnd = e.end;
      words.add(word);
    }).toList();

    return words.join();
  }

  /// Does transform first letter of
  /// this string to uppercase.
  String _makeCapitalization() {
    final firstLetter = this[0].toUpperCase();
    final restLetters = substring(1, length);

    return '$firstLetter$restLetters';
  }
}
