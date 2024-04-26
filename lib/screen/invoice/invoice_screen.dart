import 'package:flutter/material.dart';
import 'package:invoice_app/utils/globels.dart';
class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("invoice",style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child: Column(
          children: [
            Text("$productname"),
            Text("$productprice"),
            Text("$productQuantity"),
            Text("$productDiscount"),
            Text("$name"),
            Text("$email"),
            Text("$mobilenumber"),
            Text("$address"),

          ],
        ),
      ),
    );
  }
}
