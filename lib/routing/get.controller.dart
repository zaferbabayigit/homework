import 'package:get/get.dart';
import 'package:homework/country/country_controller.dart';
import 'package:homework/student/student_controllers.dart';

Future getControllers() async {
  // Async dependencies that have to be added
  final List<Future> asyncGenerators = [];
  // Async methods that have to be run before the app starts
  final List<Future> lateInitializers = [];
  Get.create(() => StudentController(), permanent: false);
  Get.create(() => CountryController(), permanent: false);
}
