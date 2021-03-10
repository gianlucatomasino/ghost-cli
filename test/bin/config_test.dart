import 'dart:io';

import 'package:test/test.dart';
import '../../bin/config.dart';

void main() {
  test('it should create a Config with a specific content api key', () {
    Config config = Config("a_value");

    expect(config, isNotNull);
    expect(config.contentKey, "a_value");
  });

  test('it should create a Config loading configs from a file', () {
    Config config = Config.loadFromFile('test/resources/config_test.json');

    expect(config, isNotNull);
    expect(config.contentKey, "a_value");
  });

  test('it should throw an execption when file doesn\'t exists', () {
    expect(() => Config.loadFromFile('test/resources/missing.json'),
        throwsA(TypeMatcher<FileSystemException>()));
  });
}
