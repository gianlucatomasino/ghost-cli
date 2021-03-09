import 'dart:io';

import 'package:test/test.dart';
import '../../bin/api_keys.dart';

void main() {
  test('it should create an ApiKeys with a specific content api key', () {
    ApiKeys apiKeys = ApiKeys("a_value");

    expect(apiKeys, isNotNull);
    expect(apiKeys.contentKey, "a_value");
  });

  test('it should create a ApiKeys loading keys from a file', () {
    ApiKeys apiKeys = ApiKeys.loadFromFile('test/resources/fake.json');

    expect(apiKeys, isNotNull);
    expect(apiKeys.contentKey, "a_value");
  });

  test('it should throw an execption when file doesn' 't exists', () {
    expect(() => ApiKeys.loadFromFile('test/resources/missing.json'),
        throwsA(TypeMatcher<FileSystemException>()));
  });
}
