import 'dart:math';

import 'package:test/test.dart';
import '../../bin/ghost_cli_runner.dart';

void main() {
  test('it should create a Options given some args', () {
    List<String> args = [
      "--config-file",
      "value",
      "--endpoint",
      "http://siteurl.com"
    ];

    final sut = GhostCliRunner();

    expect(sut, isNotNull);
    //expect(sut.configFile, equals("value"));
    //expect(sut.endpoint, equals("http://siteurl.com"));
  });
}
