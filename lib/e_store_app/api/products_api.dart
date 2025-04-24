import 'package:dio/dio.dart';
import 'package:practice_app/e_store_app/model/product.dart';

final dio = Dio();
final String productsURL = 'https://fakestoreapi.com/products';

Future<List<Product>> getProducts() async {
  List<Product> products = [];
  try {
    final response = await dio.get(productsURL);

    if (response.statusCode == 200) {
      List<dynamic> productData = response.data;
      products =
          productData.map((product) {
            return Product.fromJson(product);
          }).toList();
    }
  } on DioException catch (error) {
    print(error);
  }
  return products;
}

Future<Product> getProduct(int idProduct) async {
  Product product = Product();
  try {
    final response = await dio.get('$productsURL/$idProduct');

    if (response.statusCode == 200) {
      product = Product.fromJson(response.data);
    }
  } on DioException catch (error) {
    print(error);
  }
  return product;
}
