import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffee_app_ui_challeng/app/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.backColor,
        appBar: AppBar(
            title: ListTile(
              title: Text("Location"),
              subtitle: Row(
                children: [
                  Text("Addis Ababa,Ethiopia"),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
              trailing: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
              ),
              subtitleTextStyle: TextStyle(fontSize: 18),
              titleTextStyle: TextStyle(color: Colors.white),
            ),
            elevation: 0
            //expandedHeight: 300,
            ),
        bottomNavigationBar:
            NavigationBar(backgroundColor: Colors.white, destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "home"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "favorite"),
          NavigationDestination(icon: Icon(Icons.card_travel), label: "cart"),
          NavigationDestination(icon: Icon(Icons.location_pin), label: "pin"),
        ]),
        body: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: Get.width,
                  height: 300,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: Get.width,
                  height: 200,
                  decoration: const BoxDecoration(color: Constant.appBarColor),
                  child: Column(
                    children: [
                      //search
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              suffixIcon: Container(
                                margin: const EdgeInsets.all(2),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Constant.primColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.filter_alt_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              hintText: "Search Coffee",
                              hintStyle: const TextStyle(color: Colors.white30),
                              filled: true,
                              fillColor: Constant.textFieldColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: Get.width,
                    height: 170,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/promo.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "Promo",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Center(
                              child: Text(
                            "Buy one Get One Free",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            //menu
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: Get.width,
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.homeMenu.length,
                  itemBuilder: (context, index) => Obx(
                        () => InkWell(
                          onTap: () => controller.intialMenu.value = index,
                          child: AnimatedContainer(
                              duration: const Duration(microseconds: 12),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                  color: controller.intialMenu.value == index
                                      ? Constant.primColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                controller.homeMenu[index],
                                style: TextStyle(
                                    color: controller.intialMenu.value == index
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize:
                                        controller.intialMenu.value == index
                                            ? 17
                                            : 13),
                              )),
                        ),
                      )),
            ),
            GetBuilder(
              init: controller,
              builder:(controller) =>
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    padding: const EdgeInsets.all(20),
                    itemCount: controller.coffees.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Get.toNamed(Routes.DETAIL),
                      child: Container(
                        height: 500,
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children:[
                                  Container(
                                  width: Get.width,
                                  height: 109,
                                  decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(15)

                                        )
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,size: 13,color: Constant.primColor,),
                                          Text("3.4",style: TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                    ),
                                  )
    ]
                              ),
                            ),
                            Text("Cappuccino",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("with chekolete"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$"+controller.coffees[index]["price"],style: TextStyle(fontWeight: FontWeight.bold),),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Constant.primColor,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              )


            //  ],
            //   ),
            // )
          ],
        ));
  }
}
