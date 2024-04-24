import 'package:flutter/material.dart';
import 'package:invoice_app/screen/home/home_screen.dart';
import 'package:invoice_app/screen/product/product_screen.dart';
Map<String,WidgetBuilder>app_routs=
{
  '/':(context) => HomeScreen(),
  'product':(context) => ProductScreen(),
  'create':(context) => CreateScreen()
};

class CreateScreen {
}