import 'dart:convert';
import 'dart:io';

class Config {
  String contentKey;

  Config(this.contentKey);

  factory Config.loadFromFile(String path) {
    var keys = jsonDecode(File(path).readAsStringSync());
    return Config(keys['content_key']);
  }
}
