import 'package:flutter/material.dart';
import 'package:invoice_app/utils/coler.dart';
import 'package:invoice_app/utils/globels.dart';
class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override

  TextEditingController txeProduectname = TextEditingController();
   TextEditingController txePrice = TextEditingController();
   TextEditingController  txeQuantity= TextEditingController();
   TextEditingController txeDiscount = TextEditingController();
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,color: Colors.grey.shade200
                        ),
                      ),
                      Form(key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Produect Name",style: TextStyle(fontSize: 20,color: Colors.black),),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: txeProduectname,
                              decoration: const InputDecoration(
                                fillColor: Colors.grey,
                                label: Text("Product Name"),
                                labelStyle: TextStyle(
                                    fontSize: 18, color: Color(0xffc4c4c4)),
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if(value!.isEmpty)
                                {
                                  return "Product Name is required";
                                }
                                return null;
                              },
                            ),

                            SizedBox(height: 10,),
                            Text("Produect Price",style: TextStyle(fontSize: 20,color: Colors.black),),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: txePrice,
                              decoration: const InputDecoration(
                                fillColor: Colors.grey,
                                label: Text(" Price"),
                                labelStyle: TextStyle(
                                    fontSize: 18, color: Color(0xffc4c4c4)),
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if(value!.isEmpty)
                                {
                                  return "Product price is required";
                                }
                                return null;
                              },
                            ),

                            SizedBox(height: 10,),
                            Text("Produect Quantity",style: TextStyle(fontSize: 20,color: Colors.black),),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: txeQuantity,
                              decoration: const InputDecoration(
                                fillColor: Colors.grey,
                                label: Text(" Quantity "),
                                labelStyle: TextStyle(
                                    fontSize: 18, color: Color(0xffc4c4c4)),
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if(value!.isEmpty)
                                {
                                  return "Product Quantity is required";
                                }
                                return null;
                              },
                            ),

                            SizedBox(height: 10,),
                            Text("Produect Discount",style: TextStyle(fontSize: 20,color: Colors.black),),
                            SizedBox(height: 10,),
                            TextFormField(
                              controller: txeDiscount,
                              decoration: const InputDecoration(
                                fillColor: Colors.grey,
                                label: Text("Discount"),
                                labelStyle: TextStyle(
                                    fontSize: 18, color: Color(0xffc4c4c4)),
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if(value!.isEmpty)
                                {
                                  return "Product Discount is required";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(onPressed: () {
                        setState(() {
                          if(formKey.currentState!.validate());
                          {
                            productname=txeProduectname.text;
                            productprice=txePrice.text;
                            productQuantity=txeQuantity.text;
                            productDiscount=txeDiscount.text;
                            ProductLiet.add({
                              "productName":"$productname",
                              "productprice":int.parse(productprice!),
                              "productQuantity":int.parse(productQuantity!),
                              "productDiscount":int.parse(productDiscount!)
                            });
                            Navigator.pop(context);

                          }
                        });
                      }, child: Text("save",style: TextStyle(fontSize: 17),))
                    ],
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
