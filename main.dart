import 'package:flutter/material.dart';
import 'package:flutter_order_app/firebase_auth/Phone_auth.dart';
void main()=>runApp(MaterialApp(
  title:"Food Order App",
  debugShowCheckedModeBanner: false,
  home: PhoneAuth(),
  theme: ThemeData(
    primaryColor: Colors.pink,
  ),
));
