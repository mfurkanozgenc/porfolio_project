import 'package:project/services/database_service.dart';

class ServiceState {
  static final _instance = ServiceState._internal();
  factory ServiceState() => _instance;
  ServiceState._internal();

  final databaseService = DatabaseService();
}
