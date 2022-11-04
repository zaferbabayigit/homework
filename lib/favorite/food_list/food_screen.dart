import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:homework/favorite/favorite_list/favorite_controller.dart';
import 'package:homework/favorite/favorite_list/favorite_screen.dart';
import 'package:homework/favorite/food_list/food_controller.dart';

class FoodScreen extends GetWidget<FoodController> {
  FoodScreen({Key? key}) : super(key: key);
  static const routeName = "/food_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: goto,
              icon: const Icon(
                Icons.navigate_next_rounded,
                size: 35,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: controller.foods.length,
              itemBuilder: ((BuildContext context, int index) {
                return Card(
                  color: Colors.orangeAccent,
                  child: ListTile(
                    title: Text(controller.foods[index]),
                    trailing: FavoriteButton(
                      iconDisabledColor: Colors.white,
                      valueChanged: (_isFavori) {
                        print(_isFavori);

                        if (_isFavori) {
                          controller.favorites.add(controller.foods[index]);
                        }

                        print(controller.favorites);
                      },
                    ),
                  ),
                );
              })),
        ],
      )),
    );
  }

  goto() {
    Get.to(FavoriteScreen(
      list: controller.favorites,
    ));
  }
}
