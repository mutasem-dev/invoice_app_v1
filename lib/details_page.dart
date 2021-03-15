import 'package:flutter/material.dart';
import 'package:invoice_app_1/invoice.dart';

import 'product.dart';
class DetailsPage extends StatelessWidget {
  final Invoice invoice;

  DetailsPage(this.invoice);
  double totalPrice = 0;
  int totalQuantity = 0;
  void calc() {
    // for(Product element in invoice.products) {
    //   totalPrice += element.quantity*element.price;
    //   totalQuantity += element.quantity;
    // }
    invoice.products.forEach((element) {
      totalPrice += element.quantity*element.price;
      totalQuantity += element.quantity;
    });
  }
  @override
  Widget build(BuildContext context) {
    calc();
    return Scaffold(
      appBar: AppBar(
        title: Text(invoice.customerName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Invoice#: ${invoice.invoiceNo}",
          style: TextStyle(
            fontSize: 25
          ),
          ),
          SizedBox(height: 10,),
          Text("Products",
            style: TextStyle(
                fontSize: 25
            ),
          ),
          Container(
            height: 200,
              child: ListView.builder(
                itemCount: invoice.products.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('${index+1} - ${invoice.products[index].pname}'
                          ', Price: ${invoice.products[index].price},'
                          'quantity: ${invoice.products[index].quantity}',
                          style: TextStyle(
                              fontSize: 16
                          )
                      ),
                    );
                  },
              ),

          ),
          Text('Total Price: $totalPrice\nTotal Quantity: $totalQuantity',
              style: TextStyle(
              fontSize: 18
          )),
        ],
      ),
    );
  }
}
