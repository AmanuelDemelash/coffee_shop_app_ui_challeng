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

        ],
      )
    );
  }
}
