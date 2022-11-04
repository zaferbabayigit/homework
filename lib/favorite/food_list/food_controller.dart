import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FoodController extends GetxController {
  final List<dynamic> foods = [
    'et döner',
    "küşleme",
    "tantuni",
    "karnıyarık",
    "yayla çorba",
    "brokoli salata",
    "fettucini",
    "pizza",
    "hamburger"
  ];
  List<String> favorites = [];
  // Rx<List<bool>> favoriteList = Rx<List<bool>>([false, true, true, false]);

  // void selectFavorite(int index) {
  //   if (foods[index] == true) {
  //   foods[index] = false;
  //   } else {
  //    foods[index] = true;
  //  }
  // }

}












//2 sayfa olacak, birincide tüm liste diğerinde favoriler. 
//ilk sayfada 10 tane yemek adı yazabiliriz ve fan eklemek için yanına bir işaret vs siz ayarlarsınız.
//diğer sayfada da ilk sayfada hangilerini fan işaretlediyse onları görecek sadece