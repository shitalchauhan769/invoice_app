import 'package:flutter/material.dart';
import 'package:invoice_app/utils/coler.dart';
import 'package:invoice_app/utils/globels.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text("productList",style: TextStyle(color: Colors.white)),
          backgroundColor: Primary,
          centerTitle: true,
          actions: [
            Icon(Icons.save_alt_outlined,color: Colors.white),
            Padding(padding: EdgeInsets.only(right: 1))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: List.generate(ProductLiet.length, (index) =>  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              shape: BoxShape.rectangle,
                              color: Colors.grey.shade200,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Produect Name",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "price",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                setState(() {});
                              },
                              icon: Icon(Icons.delete)),
                          Text("total"),
                        ],
                      ),
                    ),)
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (formKey.currentState!.validate()) ;
                    });
                    Navigator.pushNamed(context, "create");
                  },
                  child: Text("save"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//
