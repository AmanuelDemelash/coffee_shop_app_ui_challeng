import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  RxList<String> homeMenu=RxList<String>(["Cappuccino","Machiato","Latte","Cappuccino","Machiato","Latte"]);
  RxList<Map<String,dynamic>> coffees=RxList<Map<String,dynamic>>([
    {
      "image":"https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "name":"",
      "with":"",
      "price":"32.5"
    },
    {
      "image":"https://images.unsplash.com/photo-1485808191679-5f86510681a2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "name":"",
      "with":"",
      "price":"32.5"
    },
    {
      "image":"https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
