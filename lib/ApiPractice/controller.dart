


import 'package:get/get.dart';
import 'package:untitled3/model.dart';
import 'package:untitled3/services.dart';

class ProductController extends GetxController{

  var productList=<Product>[].obs;
  var isLoading= true.obs;

  void fetchProduct() async{
    try {
      isLoading(true);
      var product = await RemoteServices.fetchProduct();
      if(product !=null){
        productList.value=product;
      }
    } finally {
      isLoading(false);
    }
  }

}