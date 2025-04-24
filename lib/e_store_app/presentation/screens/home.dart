import 'package:flutter/material.dart';
import 'package:practice_app/e_store_app/api/products_api.dart';
import 'package:practice_app/e_store_app/enums/category.dart';
import 'package:practice_app/e_store_app/model/product.dart';
import 'package:practice_app/e_store_app/presentation/screens/detail.dart';
import 'package:practice_app/e_store_app/presentation/screens/loading/home_loading.dart';
import 'package:practice_app/e_store_app/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Category categoryView = Category.cloting;
  late List<Product> products = [];

  Future<void> storeProducts() async {
    List<Product> allProducts = await getProducts();

    products =
        allProducts
            .where((p) => p.category!.contains(categoryView.description))
            .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lthBackgroundColor,
      appBar: AppBar(
        title: Text("Products from API"),
        backgroundColor: lthBackgroundColor,
      ),
      body: FutureBuilder(
        future: storeProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return ProductsLoading();
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  // Filter menu buttons
                  Expanded(
                    flex: 1,
                    child: SegmentedButton<Category>(
                      style: SegmentedButton.styleFrom(
                        selectedBackgroundColor: lthSecondaryColor,
                        selectedForegroundColor: lthTextColor,
                        iconColor: lthTextColor,
                      ),
                      emptySelectionAllowed: false,
                      multiSelectionEnabled: false,
                      expandedInsets: EdgeInsets.all(2.995),
                      segments: <ButtonSegment<Category>>[
                        ButtonSegment<Category>(
                          value: Category.cloting,
                          label: Text('Cloting'),
                          icon: Icon(Icons.woman),
                        ),
                        ButtonSegment<Category>(
                          value: Category.electronics,
                          label: Text('Electronic'),
                          icon: Icon(Icons.computer),
                        ),
                        ButtonSegment<Category>(
                          value: Category.jewelery,
                          label: Text('Jewelery'),
                          icon: Icon(Icons.diamond),
                        ),
                      ],
                      selected: <Category>{categoryView},
                      onSelectionChanged: (Set<Category> newSelection) {
                        setState(() {
                          categoryView = newSelection.first;
                        });
                      },
                    ),
                  ),

                  // List of products
                  Expanded(
                    flex: 13,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        Product item = products[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 8,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => DetailPage(id: item.id!),
                                ),
                              );
                            },
                            child: Card(
                              elevation: 3.5,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Image section
                                    Expanded(
                                      flex: 3,
                                      child: ProductImage(
                                        productImage: '${item.image}',
                                      ),
                                    ),
                                    SizedBox(height: 5),

                                    // Product information section
                                    Expanded(
                                      flex: 2,
                                      child: ProductInformation(
                                        productName: '${item.title}',
                                      ),
                                    ),
                                    SizedBox(height: 5),

                                    // Product price section
                                    Expanded(
                                      flex: 1,
                                      child: ProductPrice(
                                        productPrice: '${item.price}',
                                      ),
                                    ),
                                    SizedBox(height: 5),

                                    Spacer(),

                                    // Add cart section
                                    Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 20,
                                        child: OutlinedButton.icon(
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: lthBackgroundColor,
                                            iconColor: lthTextColor,
                                            foregroundColor: lthTextColor,
                                          ),
                                          onPressed: () {},
                                          label: Text(
                                            'Add cart',
                                            style: TextStyle(fontSize: 12.5),
                                          ),
                                          icon: Icon(
                                            Icons.shopping_cart_outlined,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

// Product image
class ProductImage extends StatelessWidget {
  final String productImage;

  const ProductImage({super.key, required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          image: NetworkImage(productImage),
        ),
      ),
    );
  }
}

// Product price
class ProductPrice extends StatelessWidget {
  final String productPrice;

  const ProductPrice({super.key, required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$$productPrice',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w900,
        color: lthTextColor,
      ),
    );
  }
}

// Product information
class ProductInformation extends StatelessWidget {
  final String productName;

  const ProductInformation({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Text(
      productName,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: TextStyle(
        color: lthTextColor,
        fontSize: 11.5,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.start,
    );
  }
}
