// https://www.codewars.com/kata/57a0e5c372292dd76d000d7e
import 'package:test/test.dart';

String repeatString(int n, String s) => s * n;

void main() {
  group('basic tests', () {
    test('Testing for 4 and "a"',
        () => expect(repeatString(4, "a"), equals("aaaa")));
    test('Testing for 3 and "hello "',
        () => expect(repeatString(3, "hello "), equals("hello hello hello ")));
    test('Testing for 2 and "abc"',
        () => expect(repeatString(2, "abc"), equals("abcabc")));
  });
}
