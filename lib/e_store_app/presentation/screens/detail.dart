import 'package:flutter/material.dart';
import 'package:practice_app/e_store_app/api/products_api.dart';
import 'package:practice_app/e_store_app/model/product.dart';
import 'package:practice_app/e_store_app/presentation/screens/loading/detail_loading.dart';
import 'package:practice_app/e_store_app/providers/quantity_provider.dart';
import 'package:practice_app/e_store_app/theme/colors.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  final int id;
  const DetailPage({super.key, required this.id});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late Product product = Product();
  int quantity = 1;

  Future<void> findProduct() async {
    product = await getProduct(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lthBackgroundColor,
      appBar: AppBar(
        title: Text("Product Detail"),
        backgroundColor: lthBackgroundColor,
      ),
      body: FutureBuilder(
        future: findProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return DetailLoading();
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.hasError}'));
          } else {
            return Consumer<QuantityProvider>(
              builder: (context, quantityProvider, child) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.network('${product.image}', height: 200),
                        ),
                        SizedBox(height: 10),

                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${product.title}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${product.description}',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: lthTextColor),
                            children: [
                              TextSpan(
                                text: 'Quantity available: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '${product.rating!.count}'),

                              WidgetSpan(child: SizedBox(width: 100)),

                              TextSpan(
                                text: 'Rate: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '${product.rating!.rate}'),
                            ],
                          ),
                        ),

                        SizedBox(height: 10),

                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: lthTextColor),
                            children: [
                              TextSpan(
                                text: 'Price: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '${product.price}'),
                            ],
                          ),
                        ),

                        Spacer(),

                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    style: IconButton.styleFrom(
                                      backgroundColor: lthSecondaryColor,
                                    ),
                                    color: lthTextColor,
                                    onPressed:
                                        () => quantityProvider.decrement(),
                                    icon: Icon(Icons.remove),
                                  ),
                                  Text(
                                    '${quantityProvider.quantity}',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  IconButton(
                                    style: IconButton.styleFrom(
                                      backgroundColor: lthSecondaryColor,
                                    ),
                                    color: lthTextColor,
                                    onPressed:
                                        () => quantityProvider.increment(),
                                    icon: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: lthBackgroundColor,
                                  foregroundColor: lthTextColor,
                                  iconColor: lthTextColor,
                                ),
                                onPressed: () {},
                                label: Text('Add cart'),
                                icon: Icon(Icons.shopping_cart_outlined),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
