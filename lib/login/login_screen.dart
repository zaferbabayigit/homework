import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:homework/common/custom_texfield.dart';
import 'package:homework/login/login_controller.dart';
import 'package:homework/register/register_screen.dart';

class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);
  static const routeName = "/login_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            customTextfield(controller.emailController,
                TextInputType.emailAddress, ('email'), TextInputAction.next),
            SizedBox(
              height: 55,
            ),
            customTextfield(
                controller.passwordController,
                TextInputType.visiblePassword,
                ('password'),
                TextInputAction.next),
            SizedBox(
              height: 55,
            ),
            IconButton(
                onPressed: _goToRegister,
                icon: Icon(
                  Icons.add_moderator_outlined,
                  size: 60,
                )),
            SizedBox(
              height: 55,
            ),
            IconButton(
                onPressed: _goToRegister,
                icon: Icon(
                  Icons.circle,
                  size: 60,
                )),
          ],
        ),
      )),
    );
  }

  void _goToRegister() {
    Get.offAllNamed(RegisterScreen.routeName);
  }

  void _() {
    Get.offAllNamed(RegisterScreen.routeName);
  }
}
