// https://www.codewars.com/kata/5168bb5dfe9a00b126000018
import 'package:test/test.dart';

String solution(String str) {
  return str.split('').reversed.join();
}

void main(){
  test('reversed word', () {
    expect(solution('world'), equals('dlrow'));
  });
}
