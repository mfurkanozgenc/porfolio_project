class GlobalConstants {
  static final _instance = GlobalConstants._internal();
  factory GlobalConstants() => _instance;
  GlobalConstants._internal();

  final String appVersion = 'v24.0908';
}
