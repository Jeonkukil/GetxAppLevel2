import 'package:http/http.dart' as http ;
import 'package:level2app/model/proudct_model.dart';

class Services{
  // static으로 지정하는 이유는 서버를 연결하고 닫을때마다 http를 생성하는 것은 비효율적이다.
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse('http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'),);

    if(response.statusCode == 200) {
      var jasonData = response.body;
      return productFromJson(jasonData);
    }else{
      return null;
    }
  }
}