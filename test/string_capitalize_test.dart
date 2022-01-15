import 'package:string_capitalize/string_capitalize.dart';
import 'package:test/test.dart';

void main() {
  group('String capitalize extension', () {
    group('capitalize or fail', () {
      test('String doesn\'t [empty] exception', () {
        expect(
          () => ''.capitalizeOrFail(),
          throwsA('String doesn\'t [empty]'),
        );
      });
    });

    test('capitalized [String] with more two letters', () {
      expect(
        'potato'.capitalizeOrFail(),
        'Potato',
      );
    });

    test('capitalized [String] with two letters', () {
      expect(
        'hi'.capitalizeOrFail(),
        'Hi',
      );
    });

    test('capitalized [String] with one letter', () {
      expect(
        'h'.capitalizeOrFail(),
        'H',
      );
    });
  });
}
