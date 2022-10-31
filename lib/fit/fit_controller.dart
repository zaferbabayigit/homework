import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FitController extends GetxController {
  final TextEditingController kilo = TextEditingController(text: '0');
  final TextEditingController size = TextEditingController(text: '0');

  final List results = [];
}

//kullanıcı kilo + boy girecek, siz kilo boy endexini bulup göstereceksiniz,
// kaç kere bunu yaparsa yapsın kullanıcı hepsini listede tutacaksınız.
//yani geçmiş işlemleri görebilecek gibi düşünebilirsiniz,
// girdiği her boy+kilo hesaplamasını listede görecek
