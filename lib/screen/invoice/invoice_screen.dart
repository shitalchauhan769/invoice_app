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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text("Invoice",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               Container(
                 padding: const EdgeInsets.all(10),
                 margin: const EdgeInsets.all(10),
                 height: 140,
                 width: MediaQuery.sizeOf(context).width,
                 decoration: BoxDecoration(
                   border: Border(bottom: BorderSide(color: Colors.black),left: BorderSide(color: Colors.black),right: BorderSide(color: Colors.black),top: BorderSide(color: Colors.black)),
                   color: Colors.grey.shade100
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 20,),
                     Text("coustemar name: $name",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     Text("mobileno:$mobilenumber",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     Text("email :$email",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     Text("adderss :$address",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                   ],
                 ),
               ),
              ],
            ),
            Divider(thickness: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children:List.generate(ProductLiet.length, (index) => Column(
                  children: [
                  Row(
                    children: [
                      Text(ProductLiet[index]['name']),
                      SizedBox(width: 80,),
                      Text(ProductLiet[index]['price']),
                      // const SizedBox(width: 200,),
                      // Text("$productprice"),
                      // const SizedBox(width: 10,),
                      // Text("$productQuantity"),
                      // const SizedBox(width: 10,),
                      // Text("$productDiscount"),
                      // const Divider(indent: 1,),
                    ],
                  )
                  ],
                ))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
