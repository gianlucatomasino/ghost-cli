import 'ghost_cli_runner.dart';
import 'command/post.dart';

void main(List<String> args) {
  final runner = GhostCliRunner();
  runner.addCommand(PostCommand());

  runner.run(args);
}
