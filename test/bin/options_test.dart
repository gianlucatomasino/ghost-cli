import 'dart:math';

import 'package:test/test.dart';
import '../../bin/options.dart';

void main() {
  test('it should create a Options given some args', () {
    List<String> args = ["--config", "value"];

    Options sut = Options.fromArgs(args);

    expect(sut, isNotNull);
    expect(sut.getValue("config"), equals("value"));
  });
}
