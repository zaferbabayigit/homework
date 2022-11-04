import 'package:get/get.dart';
import 'package:homework/country/country_screen.dart';
import 'package:homework/favorite/favorite_list/favorite_screen.dart';
import 'package:homework/fit/fit_screen.dart';
import 'package:homework/student/student_screen.dart';

import '../favorite/food_list/food_screen.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: StudentScreen.routeName, page: () => StudentScreen()),
  GetPage(name: CountryScreen.routeName, page: () => CountryScreen()),
  GetPage(name: FitScreen.routeName, page: () => FitScreen()),
  GetPage(name: FoodScreen.routeName, page: () => FoodScreen()),
  GetPage(
      name: FavoriteScreen.routeName,
      page: () => FavoriteScreen(
            list: [],
          )),
];
