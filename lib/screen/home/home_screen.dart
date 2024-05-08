import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:invoice_app/utils/coloer.dart';
import 'package:invoice_app/utils/globels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  TextEditingController txeName = TextEditingController();
  TextEditingController txeEmail = TextEditingController();
  TextEditingController txePhone = TextEditingController();
  TextEditingController txeAddress = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
              const Text("HomeScreen", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Primary,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Form(
          key: formKey,
          child: Center(
              child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text("Userdata",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "name",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: txeName,
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            label: Text("Name"),
                            labelStyle: TextStyle(
                                fontSize: 20, color: Color(0xffc4c4c4)),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "name is required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: txeEmail,
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            label: Text("Email"),
                            labelStyle: TextStyle(
                                fontSize: 20, color: Color(0xffc4c4c4)),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "email is required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Mobile number",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: txePhone,
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            label: Text("Mobile number"),
                            labelStyle: TextStyle(
                                fontSize: 20, color: Color(0xffc4c4c4)),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "mobile number is  required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: txeAddress,
                          decoration: const InputDecoration(
                            fillColor: Colors.grey,
                            label: Text("Address"),
                            labelStyle: TextStyle(
                                fontSize: 20, color: Color(0xffc4c4c4)),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "address is required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate())
                       {
                         name = txeName.text;
                         email = txeEmail.text;
                         mobilenumber = txePhone.text;
                         address = txeAddress.text;
                         Navigator.pushNamed(context, 'product');
                       }
                       return;
                    },
                    child: const Text(
                      "save",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
