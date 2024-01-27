import 'package:coffee_app_ui_challeng/app/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed:() => Get.back(), icon:const Icon(Icons.arrow_back_ios)),
        title: const Text('Detail'),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Expanded(child:ListView(
            children: [

            ],
          )),
          Container(
             padding:const EdgeInsets.all(20),
            width: Get.width,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("price"),
                    Text("\$4.53",style: TextStyle(fontSize: 26,color: Constant.primColor,fontWeight: FontWeight.bold),)
                ],
                ),
                const SizedBox(width: 25,),
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Constant.primColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                      child:const Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),))),
                )
              ],
            ),
          )

        ],
      )
    );
  }
}
