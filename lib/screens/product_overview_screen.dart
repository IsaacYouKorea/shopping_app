import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

enum FilterOptions { Favorites, All }

class ProductOverviewScreen extends StatelessWidget {
  static const routeName = '/product-overview';
  @override
  Widget build(BuildContext context) {
    final productContainer = Provider.of<Products>(context);
    var scaffold = Scaffold(
      appBar: AppBar(title: Text('MyShop'), actions: <Widget>[
        PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.Favorites) {
                productContainer.showFavoritesOnly();
              } else {
                productContainer.showAll();
              }
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
                  PopupMenuItem(
                      child: Text('Only Favortes'),
                      value: FilterOptions.Favorites),
                  PopupMenuItem(
                      child: Text('Show All'), value: FilterOptions.All)
                ])
      ]),
      body: ProductsGrid(),
    );
    return scaffold;
  }
}
