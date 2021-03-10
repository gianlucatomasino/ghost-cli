import 'options.dart';

void main(List<String> args) {
  Options opts = Options.fromArgs(args);

  print(opts.getValue('config'));
}
