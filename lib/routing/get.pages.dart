import 'package:get/get.dart';
import 'package:homework/student/student_screen.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: StudentScreen.routeName, page: () => StudentScreen()),
];
