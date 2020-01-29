// https://www.codewars.com/kata/583203e6eb35d7980400002a
import "package:test/test.dart";

int countSmileys(List<String> arr) {
  if (arr.length == 0) return 0;
  RegExp smiley = new RegExp(r'([:;])([-~]){0,1}([)D])');
  return smiley.allMatches(arr.join(' ')).length;
}

void main() {
  group("Fixed tests", () {
    test("Testing for []", () => expect(countSmileys([]), equals(0)));
    test("Testing for [':)', ';(', ';}', ':-D']",
        () => expect(countSmileys([':)', ';(', ';}', ':-D']), equals(2)));
    test(
        "Testing for [';]', ':[', ';*', ':\$', ';-D']",
        () =>
            expect(countSmileys([';]', ':[', ';*', ':\$', ';-D']), equals(1)));
    test("Testing for [':)',':(',':D',':O',':;']",
        () => expect(countSmileys([':)', ':(', ':D', ':O', ':;']), equals(2)));
    test("Testing for [':-)',';~D',':-D',':_D']",
        () => expect(countSmileys([':-)', ';~D', ':-D', ':_D']), equals(3)));
    test("Testing for [':---)','))',';~~D',';D']",
        () => expect(countSmileys([':---)', '))', ';~~D', ';D']), equals(1)));
    test("Testing for [';~)',':)',':-)',':--)']",
        () => expect(countSmileys([';~)', ':)', ':-)', ':--)']), equals(3)));
    test("Testing for [':o)',':--D',';-~)']",
        () => expect(countSmileys([':o)', ':--D', ';-~)']), equals(0)));
  });
}
