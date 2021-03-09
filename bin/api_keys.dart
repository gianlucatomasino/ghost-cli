import 'dart:convert';
import 'dart:io';

class ApiKeys {
  String contentKey;

  ApiKeys(this.contentKey);

  factory ApiKeys.loadFromFile(String path) {
    var keys = jsonDecode(File(path).readAsStringSync());
    return ApiKeys(keys['content_key']);
  }
}
