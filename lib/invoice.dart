import 'product.dart';
class Invoice {
  int invoiceNo;
  String customerName;
  List<Product> products;

  Invoice({this.invoiceNo, this.customerName, this.products});
}