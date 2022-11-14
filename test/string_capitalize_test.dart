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
        var text = 'I '.capitalizeEach();

        expect(text, 'I ');

        text += 'think '.capitalizeEach();

        expect(text, 'I Think ');
       
        text += 'it is cool'.capitalizeEach();

        expect(text, 'I Think It Is Cool');
      });
    });

    group('capitalize each or fail', () {
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

    group('capitalize list', () {
      test('should be capitalize all items', () {
        final result = ['peter', 'parker', 'and', 'mary', 'jane'].capitalize();

        expect(result, ['Peter', 'Parker', 'And', 'Mary', 'Jane']);
      });
    });
  });
}
