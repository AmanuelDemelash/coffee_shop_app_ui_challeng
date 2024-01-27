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
              subtitle: Text("Addis Ababa,Ethiopia"),
              trailing: Icon(Icons.person),
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
                Container(
                  width: Get.width,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Constant.appBarColor
                  ),
                )


              ],
            ),
          )
        ],
      )
    );
  }
}
