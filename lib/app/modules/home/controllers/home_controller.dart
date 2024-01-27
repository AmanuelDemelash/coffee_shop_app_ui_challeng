import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  RxList<String> homeMenu=RxList<String>(["Cappuccino","Machiato","Latte","Cappuccino","Machiato","Latte"]);
  RxList<Map<String,dynamic>> coffees=RxList<Map<String,dynamic>>([
    {
      "image":"",
      "name":"",
      "with":"",
      "price":"32.5"
    },
    {
      "image":"",
      "name":"",
      "with":"",
      "price":"32.5"
    },
    {
      "image":"",
      "name":"",
      "with":"",
      "price":"32.5"
    }


  ]);
  RxInt intialMenu=0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
