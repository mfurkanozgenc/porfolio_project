import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/base/base_state.dart';
import 'package:project/pages/loginPage/login_controller.dart';

class LoginView extends GetView<LoginController> with BaseState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
            text: TextSpan(
                text: 'HOŞGELDİNİZ : ',
                style: const TextStyle(fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: services.databaseService.userName,
                  style: TextStyle(
                      color: constants.colors.generalColor,
                      fontWeight: FontWeight.bold))
            ])),
      ),
    );
  }
}
