import 'package:flutter/material.dart';
import 'package:invoice_app_1/product.dart';
class ProductListItem extends StatelessWidget {
  final Product product;
  final VoidCallback deleteProduct;

  ProductListItem({this.product,this.deleteProduct});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Colors.blue,
        leading: Text(product.pname,
          style: TextStyle(
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 25.0
          ),
        ),
        title: Text('Price: ${product.price}'),
        subtitle: Text('Quantity: ${product.quantity}'),
        trailing: IconButton(
          onPressed: deleteProduct,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
