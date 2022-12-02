import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homework/country/country_controller.dart';
import 'package:homework/login/login_screen.dart';

class CountryScreen extends GetWidget<CountryController> {
  CountryScreen({Key? key}) : super(key: key);
  static const routeName = "/student_screen";
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: ListView.builder(
              itemCount: controller.country.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  onDismissed: (direction) {
                    controller.country.remove(index);
                    print(controller.country[index]);
                    print('Listeden Çıkartıldı');
                  },
                  background: Container(
                    color: Colors.red,
                  ),
                  key: Key(controller.country[index]),
                  child: Card(
                    color: Colors.yellow,
                    child: ListTile(
                      title: Text(controller.country[index]),
                    ),
                  ),
                );
              },
              shrinkWrap: true,
            ),
          ),
          TextButton(
              child: Icon(
                Icons.add_box,
                color: Colors.red,
                size: 79,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('Yeni ülke ekleyiniz'),
                          content: TextField(
                            controller: controller.newcountry,
                          ),
                          actions: [
                            TextButton(
                                onPressed: (() {
                                  controller.country
                                      .add(controller.newcountry.text);
                                }),
                                child: Text("kaydet")),
                            FloatingActionButton(
                              child: Text('Logout'),
                              onPressed: () {
                                auth.signOut();
                                _goToLogin();
                              },
                            )
                          ],
                        ));
              })
        ]),
      ),
    );
  }

  void _goToLogin() {
    Get.offAllNamed(LoginScreen.routeName);
  }
}
//3. app -> 10 tane ülke default sıralı bir liste var. 
//bu listeye ülke ekleyebileceğiz, bu listeden ülke silebileceğiz