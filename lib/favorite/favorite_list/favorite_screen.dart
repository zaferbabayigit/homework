import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/favorite/favorite_list/favorite_controller.dart';
import 'package:homework/favorite/food_list/food_controller.dart';
import 'package:homework/favorite/food_list/food_screen.dart';
import 'package:homework/fit/fit_controller.dart';

class FavoriteScreen extends GetWidget<FavoriteController> {
  FavoriteScreen({Key? key, required this.list}) : super(key: key);
  static const routeName = "/favorite_screen";

  //her bu sayfa açıldığından controller'ı baştan başlayacak ve bu sayede elemanı hep ilk hali olacak
  //ya o listeyi başka yerde tanımlayıp değiştirceksin ya da buraya listeyi gönderceksin
  //mantığı anladık mı evet hoxam, güzel bence listeyi buraya gönder diğer sayfada eklediğimiz
  List? list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: list?.length ?? 0,
              itemBuilder: ((context, index) {
                return Card(
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(list?[index] ?? ""),
                    ));
              })),
        ],
      )),
    );
  }
}
