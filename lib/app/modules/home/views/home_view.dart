import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffee_app_ui_challeng/app/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:CustomScrollView(
        slivers: [
           const SliverAppBar(
            title:ListTile(
              title: Text("Location"),
              subtitle: Row(
                children: [
                  Text("Addis Ababa,Ethiopia"),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
              trailing: CircleAvatar(
               radius:24,
                backgroundImage: NetworkImage(
                   "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
              ),
              subtitleTextStyle: TextStyle(fontSize: 18),
              titleTextStyle: TextStyle(color: Colors.white),
            ),
            floating: true,
            pinned: true,
            //expandedHeight: 300,
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: Get.width,
                      height: 350,
                    ),
                    Container(
                      padding:const EdgeInsets.all(20),
                      width: Get.width,
                      height: 180,
                      decoration: const BoxDecoration(
                          color: Constant.appBarColor
                      ),
                      child: Column(
                        children: [
                          //search
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: const Icon(Icons.search,color: Colors.white,),
                                  suffixIcon:Container(
                                    margin:const EdgeInsets.all(2),
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Constant.primColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child:const Icon(Icons.filter_alt_outlined,color: Colors.white,),
                                  ),
                                  hintText: "Search Coffee",
                                  hintStyle:const TextStyle(color: Colors.white30),
                                  filled: true,
                                  fillColor: Constant.textFieldColor
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: Get.width,
                        height: 170,
                        margin:const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          image: const DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1509785307050-d4066910ec1e?q=80&w=1928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          padding:const EdgeInsets.all(20),
                          child:Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child:const Text("Promo",style: TextStyle(color: Colors.white),),
                              ),
                             const Center(child: Text("Buy one Get One Free",style: TextStyle(color: Colors.white,fontSize: 25),)),
                            ],
                          ),
                        ),


                      ),
                    )
                  ],
                ),
                //menu
                Container(
                  margin:const EdgeInsets.only(left: 20),
                  width: Get.width,
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.homeMenu.length,
                    itemBuilder:(context, index) =>
                      Obx(() => InkWell(
                        onTap: () => controller.intialMenu.value=index,
                        child: AnimatedContainer(
                          duration: const Duration(microseconds:12),
                            padding:const EdgeInsets.all(10),
                            margin:const EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              color:controller.intialMenu.value==index? Constant.primColor:Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                              child: Text(controller.homeMenu[index],style:TextStyle(color:controller.intialMenu.value==index?Colors.white:Colors.black),
                              )
                          ),
                      ),)
                  ),
                ),
                ListView.builder(
                  padding:const EdgeInsets.all(20),
                  itemCount: 32,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:(context, index) =>
                  Text("data"),
                )



              ],
            ),
          )
        ],
      )
    );
  }
}
