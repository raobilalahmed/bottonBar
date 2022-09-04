import 'package:http/http.dart' as http;
import 'package:untitled3/model.dart';


class RemoteServices {

 static Future<List<Product>?> fetchProduct() async {

    var client= http.Client();
    var url= Uri.parse('http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
    var response=await client.get(url);
    if(response.statusCode==200){
      var json=response.body;
      return productFromJson(json);
    }
    else {
      return null;
    }


  }


}