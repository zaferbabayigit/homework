import 'package:get/get.dart';
import 'package:homework/country/country_screen.dart';
import 'package:homework/student/student_screen.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: StudentScreen.routeName, page: () => StudentScreen()),
  GetPage(name: CountryScreen.routeName, page: () => CountryScreen()),
];
