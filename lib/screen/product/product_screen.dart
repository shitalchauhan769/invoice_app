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
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context,'invoice');
            }, child:Icon(Icons.save_alt_outlined,color: Colors.white),
                )
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
                      child: Column(
                        children: [
                          Row(
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${ProductLiet[index]['productName']}"),
                                  Text("${ProductLiet[index]['productprice']}"),
                                ],
                              ),
                              Spacer(),
                               InkWell(onTap: () {
                                 setState(() {
                                   ProductLiet.removeAt(index);
                                 });
                               },
                                 child: Icon(Icons.delete),
                               ),
                              Text("${total(ProductLiet[index]['productprice'], ProductLiet[index]['productQuantity'])}"),
                            ],
                          ),
                        ],
                      ),
                    ),)
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (formKey.currentState!.validate()) ;
            });
            Navigator.pushNamed(context, "create");
          },
          child: Text("+"),
        ) ,
      ),
    );
  }
  int total(int p,int q){
    return p*q ;
  }
}
//
