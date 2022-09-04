

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled3/controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ProductController pc= Get.put(ProductController());


    return Scaffold(
      appBar: AppBar(
        title: Text('Api'),
        centerTitle: true,
      ),
      body: Obx((){
        if(pc.isloading.value)
          return Center(child: CircularProgressIndicator());
        else
       return ListView.builder(
            itemCount: pc.productList.length,
            itemBuilder: (contex, i){
              return ListTile(
                title: Text(pc.productList[i].id.toString()),
              );
            });
      })
    );
  }
}
