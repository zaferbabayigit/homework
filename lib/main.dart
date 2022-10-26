import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/routing/get.pages.dart';
import 'package:homework/student/student_screen.dart';

import 'routing/get.controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // controller'ları tanıtıyoruz
  await getControllers();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: getPages,
        home: StudentScreen());
  }
}
