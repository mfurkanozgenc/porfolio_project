import 'package:project/states/constant_state.dart';
import 'package:project/states/service_state.dart';

mixin BaseState {
  final constants = ConstantState();
  final services = ServiceState();
}
