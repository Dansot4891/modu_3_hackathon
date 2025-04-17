import 'dart:io';

class EnvManager {
  // singletone pattern
  EnvManager._initial();
  static final EnvManager _envManager = EnvManager._initial();
  factory EnvManager() => _envManager;

  Future<List<String>> readEnvData() async {
    try {
      final file = File('/.env');
      final list = await file.readAsLines();
      print(list);
      return list;
    } on PathNotFoundException catch (e) {
      print('no file');
      return Future.value(['']);
    }
  }
}
