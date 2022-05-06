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
      test('string doesn\'t [empty] exception', () {
        expect(
          () => ''.capitalizeOrFail(),
          throwsA(isA<StringDoesNotBeEmptyException>()),
        );
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

    group('capitalize each', () {
      test('uppercase all words within same spaces', () {
        expect('I like dart language'.capitalizeEach(), 'I Like Dart Language');
      });

      test('uppercase all words within differents spaces', () {
        expect(' i    like dart  language'.capitalizeEach(),
            ' I    Like Dart  Language');
      });

      test('uppercase all words within numbers too', () {
        expect('I spend 300 dollars per month'.capitalizeEach(),
            'I Spend 300 Dollars Per Month');
      });

      test('uppercase all words with special characters', () {
        expect('Street, London!'.capitalizeEach(),
            'Street, London!');
      });
    });

    group('capitalize each or fail', () {
      test('string doesn\'t [empty] exception', () {
        expect(
          () => ''.capitalizeOrFail(),
          throwsA(isA<StringDoesNotBeEmptyException>()),
        );
      });
      test('uppercase all words within same spaces', () {
        expect('I like dart language'.capitalizeEach(), 'I Like Dart Language');
      });

      test('uppercase all words within differents spaces', () {
        expect(' i    like dart  language'.capitalizeEach(),
            ' I    Like Dart  Language');
      });

      test('uppercase all words within numbers too', () {
        expect('I spend 300 dollars per month'.capitalizeEach(),
            'I Spend 300 Dollars Per Month');
      });
    });

    group('starts with a capital letter', () {
      test('should be with capital letter', () {
        expect('Dart'.startsWithCapital(), true);
      });

      test('should not be with capital letter', () {
        expect('dart'.startsWithCapital(), false);
      });
    });

    group('capitalize list', () {
      test('should be capitalize all items', () {
        final result = ['peter', 'parker', 'and', 'mary', 'jane'].capitalize();

        expect(result, ['Peter', 'Parker', 'And', 'Mary', 'Jane']);
      });
    });
  });
}
