import 'package:string_capitalize/string_capitalize.dart';
import 'package:test/test.dart';

void main() {
  group('String capitalize extension', () {
    group('capitalize', () {
      test('returns an empty [String]', () {
        expect(''.capitalize(), '');
      });

      test('uppercase first letter [String]', () {
        expect('dart'.capitalize(), 'Dart');
      });
    });

    group('capitalize or fail', () {
      test('String doesn\'t [empty] exception', () {
        expect(
          () => ''.capitalizeOrFail(),
          throwsA('String doesn\'t [empty]'),
        );
      });
    });

    test('uppercase first letter of [String] with more two letters', () {
      expect(
        'potato'.capitalizeOrFail(),
        'Potato',
      );
    });

    test('uppercase first letter of [String] with two letters', () {
      expect(
        'hi'.capitalizeOrFail(),
        'Hi',
      );
    });

    test('uppercase first letter of [String] with one letter', () {
      expect(
        'h'.capitalizeOrFail(),
        'H',
      );
    });
  });
}
