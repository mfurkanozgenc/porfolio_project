import 'package:project/constants/color_constants.dart';
import 'package:project/constants/global_constants.dart';

class ConstantState {
  static final _instance = ConstantState._internal();
  factory ConstantState() => _instance;
  ConstantState._internal();

  final colors = ColorConstants();
  final globals = GlobalConstants();
}
