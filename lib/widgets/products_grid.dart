import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './product_item.dart';
import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    print(products);
    return GridView.builder(
      padding:
          const EdgeInsets.all(10.0), // const prevents padding to rebuild
      itemCount: products.length,
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}