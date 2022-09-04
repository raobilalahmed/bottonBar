


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:untitled3/ApiPractice/controller.dart';

class MyNewHome extends StatelessWidget {
  const MyNewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ProductController pc= Get.put(ProductController());

    return Scaffold(
      body: Obx((){
        if(pc.isLoading.value){
          return Center(child: CircularProgressIndicator(),);
        }
        else
          return ListView.builder(
              itemCount: pc.productList.length,
              itemBuilder: (contex, i){
            return ListTile(
              title: Text(pc.productList[i].name),
            );
          });
      }),
    );
  }
}
