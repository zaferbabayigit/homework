import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:homework/common/custom_texfield.dart';
import 'package:homework/country/country_screen.dart';
import 'package:homework/login/login_controller.dart';
import 'package:homework/register/register_screen.dart';

class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);
  static const routeName = "/login_screen";
  final auth = FirebaseAuth.instance;
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
                onPressed: () {
                  auth
                      .createUserWithEmailAndPassword(
                          email: controller.emailController.toString(),
                          password: controller.passwordController.toString())
                      .then((_) {
                    _goToRegister();
                  });
                },
                icon: Icon(
                  Icons.add_moderator_outlined,
                  size: 60,
                )),
            SizedBox(
              height: 55,
            ),
            IconButton(
                onPressed: () {
                  auth
                      .signInWithEmailAndPassword(
                          email: controller.emailController.toString(),
                          password: controller.passwordController.toString())
                      .then((_) {
                    _okey();
                  });
                },
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

  void _okey() {
    Get.offAllNamed(CountryScreen.routeName);
  }
}
