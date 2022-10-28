import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/country/country_controller.dart';

class CountryScreen extends GetWidget<CountryController> {
  CountryScreen({Key? key}) : super(key: key);
  static const routeName = "/student_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: ListView.builder(
              itemCount: controller.country.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  onDismissed: (direction) {
                    controller.country.removeAt(index);
                    print('Listeden Çıkartıldı');
                    print(controller.country);
                  },
                  background: Container(
                    color: Colors.red,
                  ),
                  key: Key(controller.country[index]),
                  child: Card(
                    color: Colors.amber.shade300,
                    child: ListTile(
                      title: Text(controller.country[index]),
                    ),
                  ),
                );
              },
              shrinkWrap: true,
            ),
          ),
        ]),
      ),
    );
  }
}
//3. app -> 10 tane ülke default sıralı bir liste var. 
//bu listeye ülke ekleyebileceğiz, bu listeden ülke silebileceğiz