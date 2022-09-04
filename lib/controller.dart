

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:untitled3/model.dart';
import 'package:untitled3/services.dart';

class ProductController extends GetxController{

  var productList=<Product>[].obs;
  var isloading=true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }

  void getData() async{
    try {
      isloading(true);
      var product= await RemoteServices.fetchProduct();
      if(product !=null){
        productList.value=product;
      }
    } finally {
      isloading(false);
    }


  }

}