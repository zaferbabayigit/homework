import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/country/country_screen.dart';
import 'package:homework/favorite/favorite_list/favorite_screen.dart';
import 'package:homework/favorite/food_list/food_screen.dart';
import 'package:homework/fit/fit_screen.dart';
import 'package:homework/login/login_screen.dart';

import 'package:homework/routing/get.pages.dart';
import 'package:homework/student/student_screen.dart';

import 'routing/get.controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await getControllers();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: getPages,
        home: LoginScreen());
  }
}
