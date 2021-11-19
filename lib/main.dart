import 'package:flutter/material.dart';
import 'package:flutter_getx/utils/mybindings.dart';
import 'package:flutter_getx/view/home.dart';
//import 'package:flutter_getx/view2/home.dart';
import 'package:flutter_getx/view2/pageone.dart';
import 'package:get/get.dart';
import 'view2/pagetwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      //initialBinding: MyBindings(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/pageOne", page: () => PageOne()),
        GetPage(name: "/pageTwo", page: () => PageTwo())
      ],
    );
  }
}

