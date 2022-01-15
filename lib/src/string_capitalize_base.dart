extension StringCapitalize on String {
  String capitalizeOrFail() {
    if (isEmpty) {
      throw 'String doesn\'t [empty]';
    }

    final firstLetter = this[0].toUpperCase();
    final restLetters = substring(1, length);

    return '$firstLetter$restLetters';
  }
}
