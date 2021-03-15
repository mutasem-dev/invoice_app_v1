import 'package:flutter/material.dart';
import 'package:invoice_app_1/details_page.dart';

import 'invoice.dart';
class AllInvoicesPage extends StatelessWidget {
  final List<Invoice> invoices;

  AllInvoicesPage(this.invoices);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Customers'),
      ),
      body: ListView.builder(
        itemCount: invoices.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => DetailsPage(invoices[index]),));
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              color: Colors.blue,
              child: Text(invoices[index].customerName,
                style: TextStyle(fontSize: 25),
              ),
            ),
          );
        },
      ),
    );
  }
}
