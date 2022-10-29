import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CountryController extends GetxController {
  final TextEditingController newcountry = TextEditingController();

  final List country = [
    "ukrayna",
    "almanya",
    "amerika",
    "rusya",
    "danimarka",
    "japonya",
    "türkiye",
    "hollanda",
    "belçika",
    "ingiltere"
  ];
}
//for (var i = 0;
                                     // i < controller.country.length;
                                    //  i++) {
                                   // String newValue = controller.country[i] + 1;
                                 //   controller.country[i][controller.country] =
                                 //       controller.country[i];
                                //    print('kaydedildi');
                                //  }