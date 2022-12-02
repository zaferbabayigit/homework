import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/common/custom_texfield.dart';
import 'package:homework/login/login_screen.dart';
import 'package:homework/register/register_controller.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);
  static const routeName = "/register_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            customTextfield(controller.emailController,
                TextInputType.emailAddress, ('name'), TextInputAction.next),
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
                onPressed: _goToLogin,
                icon: Icon(
                  Icons.circle,
                  size: 60,
                )),
          ],
        ),
      )),
    );
  }

  void _goToLogin() {
    Get.offAllNamed(LoginScreen.routeName);
  }

  void _() {
    Get.offAllNamed(RegisterScreen.routeName);
  }
}
