// https://www.codewars.com/kata/55908aad6620c066bc00002a
import 'package:test/test.dart';

bool XO(String str) {
  var stack = new List<String>();
  for (var c in str.toLowerCase().split('')) {
    if (c == 'x' || c == 'o') {
      if (!stack.isEmpty && c != stack.last) {
        stack.removeLast();
      } else {
        stack.add(c);
      }
    }
  }
  return stack.isEmpty ? true : false;
}

void main() {
  group('Fixed tests', () {
    test("Testing for xo", () {
      expect(XO('xo'), equals(true));
    });
    test("Testing for XO", () {
      expect(XO('XO'), equals(true));
    });
    test("Testing for xo0", () {
      expect(XO('xo0'), equals(true));
    });
    test("Testing for xxxoo", () {
      expect(XO('xxxoo'), equals(false));
    });
    test("Testing for xxOo", () {
      expect(XO("xxOo"), equals(true));
    });
    test("Testing for empty string", () {
      expect(XO(''), equals(true));
    });
    test("Testing for xxxxxoooxooo", () {
      expect(XO('xxxxxoooxooo'), equals(true));
    });
    test("Testing for xxxm", () {
      expect(XO("xxxm"), equals(false));
    });
    test("Testing for ooom", () {
      expect(XO("ooom"), equals(false));
    });
    test("Testing for Oo", () {
      expect(XO("Oo"), equals(false));
    });
    test("Testing for abcdefghijklmnopqrstuvwxyz", () {
      expect(XO('abcdefghijklmnopqrstuvwxyz'), equals(true));
    });
  });
}
