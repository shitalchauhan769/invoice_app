import 'package:flutter/material.dart';
class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text("productList",style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade200,
                ),
              ),
            ],
          ),
        ],
      ),
    ),);
  }
}
// TextEditingController txeProduectname = TextEditingController();
//   TextEditingController txePrice = TextEditingController();
//   TextEditingController  txeQuantity= TextEditingController();
//   TextEditingController txeDiscount = TextEditingController();
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();