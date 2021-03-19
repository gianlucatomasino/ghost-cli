import 'dart:convert';
import 'dart:io';

class Config {
  final String contentKey;
  final Uri endpoint;

  Config(this.contentKey, this.endpoint);

  factory Config.loadFromFile(String path) {
    final keys = jsonDecode(File(path).readAsStringSync());
    Uri endpoint = Uri.parse(keys['endpoint']);

    return Config(keys['content_key'], endpoint);
  }
}
