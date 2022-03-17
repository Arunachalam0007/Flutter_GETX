import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<http.Response> fetchShopXProductResponse() async {
    return await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
  }
}
