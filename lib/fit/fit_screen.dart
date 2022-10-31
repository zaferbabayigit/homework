import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'fit_controller.dart';

class FitScreen extends GetWidget<FitController> {
  FitScreen({Key? key}) : super(key: key);
  static const routeName = "/fit_screen";
  var bodyMassIndex;
  var kg;
  var metre;

  bodyMassCalculate() {
    kg = double.parse(controller.kilo.text);
    metre = double.parse(controller.size.text);
    bodyMassIndex = kg / (metre * metre);
  }

  addList() {
    controller.results.add(bodyMassIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
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
                            border: InputBorder.none, hintText: 'Kilo'),
                        maxLength: 3,
                        keyboardType: TextInputType.number,
                        controller: controller.kilo,
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
                            border: InputBorder.none, hintText: 'Boy'),
                        maxLength: 4,
                        keyboardType: TextInputType.number,
                        controller: controller.size,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  InkWell(
                    onTap: () {
                      bodyMassCalculate();
                      print(bodyMassIndex);
                      addList();
                    },
                    child: Container(
                      height: 70,
                      width: 120,
                      child: Text(
                        "Vücut kitle endeksini hesapla",
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
              child: Text('$bodyMassIndex'),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.results.length,
                  itemBuilder: ((context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(controller.results[index]),
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
