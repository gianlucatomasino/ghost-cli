import 'package:args/args.dart';

class Options {
  ArgResults _results;

  Options(this._results);

  factory Options.fromArgs(List<String> args) {
    ArgParser parser = new ArgParser();
    parser.addOption('config', defaultsTo: 'config.json');

    return Options(parser.parse(args));
  }

  getValue(String config) {
    return _results[config];
  }
}
