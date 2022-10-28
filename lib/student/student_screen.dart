import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/country/country_screen.dart';
import 'package:homework/student/student_controllers.dart';

class StudentScreen extends GetWidget<StudentController> {
  StudentScreen({Key? key}) : super(key: key);
  static const routeName = "/country_screen";
  var vizepuan;
  var finalpuan;
  var ortalama;
  String result = '';
  _orta() {
    vizepuan = double.parse(controller.vizep.text);
    finalpuan = double.parse(controller.finalp.text);
    ortalama = (finalpuan + vizepuan) / 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            BackButton(
              onPressed: () {
                _goToCountry();
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        height: 100,
                        width: 40,
                        child: TextField(
                          cursorHeight: 30,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Vize'),
                          maxLength: 3,
                          keyboardType: TextInputType.number,
                          controller: controller.vizep,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        height: 100,
                        width: 40,
                        child: TextField(
                          cursorHeight: 30,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Final'),
                          maxLength: 3,
                          keyboardType: TextInputType.number,
                          controller: controller.finalp,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {
                        _orta();
                        _example();
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        child: Text(
                          "Hesapla",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 100,
                child: RichText(
                  text: TextSpan(text: '$result' + '$ortalama'),
                ),
                color: Colors.redAccent,
              ),
            ],
          ),
        ));
  }

  _example() {
    if (ortalama >= 50) {
      result = 'geçtin';
    } else {
      result = 'kaldın';
    }
  }

  void _goToCountry() {
    Get.toNamed(CountryScreen.routeName);
  }
}
