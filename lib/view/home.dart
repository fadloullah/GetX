import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/homeconroller.dart';
import 'package:flutter_getx/utils/mybindings.dart';
import 'package:flutter_getx/view/page1.dart';
import 'package:flutter_getx/view/page2.dart';
import 'package:flutter_getx/view/pageone.dart';
import 'package:flutter_getx/view/pagetwo.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final controller = Get.lazyPut(()=>HomeController(),fenix: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){
                  Get.to(() => Page1(),binding: MyBindings());
                },
                child: Text("Page 1"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){
                  Get.to(() =>Page2());
                },
                child: Text("Page 2"),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){
                  Get.to(PageTwo());
                },
                child: Text("Page Two"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
