import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        title: Text(product.title, textAlign: TextAlign.center),
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: () => {},
        ),
        trailing: IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () => {},),
      ),
    );
  }
}
