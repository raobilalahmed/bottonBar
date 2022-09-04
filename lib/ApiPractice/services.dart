import 'package:http/http.dart' as http;
import 'package:untitled3/model.dart';


class RemoteServices {

 static Future<List<Product>?> getResponse() async {
    var client= http.Client();
    var url= Uri.parse('');
    var response = await client.get(url);
    if(response.statusCode==200){
      var json= response.body;
      return productFromJson(json);
    }
  }

}