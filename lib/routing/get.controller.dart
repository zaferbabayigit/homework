import 'package:get/get.dart';
import 'package:homework/country/country_controller.dart';
import 'package:homework/favorite/favorite_list/favorite_controller.dart';
import 'package:homework/favorite/food_list/food_controller.dart';
import 'package:homework/fit/fit_controller.dart';
import 'package:homework/login/login_controller.dart';
import 'package:homework/register/register_controller.dart';

import 'package:homework/student/student_controllers.dart';

Future getControllers() async {
  // Async dependencies that have to be added
  final List<Future> asyncGenerators = [];
  // Async methods that have to be run before the app starts
  final List<Future> lateInitializers = [];
  Get.create(() => StudentController(), permanent: false);
  Get.create(() => CountryController(), permanent: false);
  Get.create(() => FitController(), permanent: false);
  Get.create(() => FoodController(), permanent: false);
  Get.create(() => FavoriteController(), permanent: false);
  Get.create(() => LoginController(), permanent: false);
  Get.create(() => RegisterController(), permanent: false);
}
